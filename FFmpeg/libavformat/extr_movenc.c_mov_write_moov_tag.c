
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_22__ {int nb_streams; int ** streams; } ;
struct TYPE_21__ {int nb_streams; int flags; int chapter_track; scalar_t__ mode; TYPE_2__* tracks; int iods_skip; int time; } ;
struct TYPE_20__ {scalar_t__ entry; scalar_t__ tref_tag; scalar_t__ tag; size_t src_track; int timescale; int track_duration; int track_id; int tref_id; int st; TYPE_1__* par; int time; } ;
struct TYPE_19__ {scalar_t__ codec_type; } ;
typedef TYPE_2__ MOVTrack ;
typedef TYPE_3__ MOVMuxContext ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 int AV_PKT_DATA_FALLBACK_TRACK ;
 int FF_MOV_FLAG_FRAGMENT ;
 scalar_t__ MKTAG (char,char,char,char) ;
 scalar_t__ MODE_MOV ;
 scalar_t__ MODE_PSP ;
 int av_rescale (int ,int ,int ) ;
 scalar_t__ av_stream_get_side_data (int ,int ,int*) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int build_chunks (TYPE_2__*) ;
 int ffio_wfourcc (int *,char*) ;
 int mov_setup_track_ids (TYPE_3__*,TYPE_4__*) ;
 int mov_write_iods_tag (int *,TYPE_3__*) ;
 int mov_write_mvex_tag (int *,TYPE_3__*) ;
 int mov_write_mvhd_tag (int *,TYPE_3__*) ;
 int mov_write_trak_tag (TYPE_4__*,int *,TYPE_3__*,TYPE_2__*,int *) ;
 int mov_write_udta_tag (int *,TYPE_3__*,TYPE_4__*) ;
 int mov_write_uuidusmt_tag (int *,TYPE_4__*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_moov_tag(AVIOContext *pb, MOVMuxContext *mov,
                              AVFormatContext *s)
{
    int i;
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "moov");

    mov_setup_track_ids(mov, s);

    for (i = 0; i < mov->nb_streams; i++) {
        if (mov->tracks[i].entry <= 0 && !(mov->flags & FF_MOV_FLAG_FRAGMENT))
            continue;

        mov->tracks[i].time = mov->time;

        if (mov->tracks[i].entry)
            build_chunks(&mov->tracks[i]);
    }

    if (mov->chapter_track)
        for (i = 0; i < s->nb_streams; i++) {
            mov->tracks[i].tref_tag = MKTAG('c','h','a','p');
            mov->tracks[i].tref_id = mov->tracks[mov->chapter_track].track_id;
        }
    for (i = 0; i < mov->nb_streams; i++) {
        MOVTrack *track = &mov->tracks[i];
        if (track->tag == MKTAG('r','t','p',' ')) {
            track->tref_tag = MKTAG('h','i','n','t');
            track->tref_id = mov->tracks[track->src_track].track_id;
        } else if (track->par->codec_type == AVMEDIA_TYPE_AUDIO) {
            int * fallback, size;
            fallback = (int*)av_stream_get_side_data(track->st,
                                                     AV_PKT_DATA_FALLBACK_TRACK,
                                                     &size);
            if (fallback != ((void*)0) && size == sizeof(int)) {
                if (*fallback >= 0 && *fallback < mov->nb_streams) {
                    track->tref_tag = MKTAG('f','a','l','l');
                    track->tref_id = mov->tracks[*fallback].track_id;
                }
            }
        }
    }
    for (i = 0; i < mov->nb_streams; i++) {
        if (mov->tracks[i].tag == MKTAG('t','m','c','d')) {
            int src_trk = mov->tracks[i].src_track;
            mov->tracks[src_trk].tref_tag = mov->tracks[i].tag;
            mov->tracks[src_trk].tref_id = mov->tracks[i].track_id;

            mov->tracks[i].track_duration = av_rescale(mov->tracks[src_trk].track_duration,
                                                       mov->tracks[i].timescale,
                                                       mov->tracks[src_trk].timescale);
        }
    }

    mov_write_mvhd_tag(pb, mov);
    if (mov->mode != MODE_MOV && !mov->iods_skip)
        mov_write_iods_tag(pb, mov);
    for (i = 0; i < mov->nb_streams; i++) {
        if (mov->tracks[i].entry > 0 || mov->flags & FF_MOV_FLAG_FRAGMENT) {
            int ret = mov_write_trak_tag(s, pb, mov, &(mov->tracks[i]), i < s->nb_streams ? s->streams[i] : ((void*)0));
            if (ret < 0)
                return ret;
        }
    }
    if (mov->flags & FF_MOV_FLAG_FRAGMENT)
        mov_write_mvex_tag(pb, mov);

    if (mov->mode == MODE_PSP)
        mov_write_uuidusmt_tag(pb, s);
    else
        mov_write_udta_tag(pb, mov, s);

    return update_size(pb, pos);
}
