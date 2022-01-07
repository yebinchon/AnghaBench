
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_23__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_25__ {scalar_t__ num; } ;
struct TYPE_29__ {TYPE_23__ sample_aspect_ratio; } ;
struct TYPE_28__ {int flags; scalar_t__ use_editlist; int fc; } ;
struct TYPE_27__ {int entry; int chunkCount; scalar_t__ start_dts; scalar_t__ mode; scalar_t__ tag; TYPE_2__* par; scalar_t__ tref_tag; TYPE_1__* cluster; } ;
struct TYPE_26__ {scalar_t__ codec_type; } ;
struct TYPE_24__ {scalar_t__ dts; } ;
typedef TYPE_3__ MOVTrack ;
typedef TYPE_4__ MOVMuxContext ;
typedef TYPE_5__ AVStream ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_NOPTS_VALUE ;
 int FF_MOV_FLAG_EMPTY_MOOV ;
 scalar_t__ MKTAG (char,char,char,char) ;
 scalar_t__ MODE_MOV ;
 scalar_t__ MODE_PSP ;
 int av_assert2 (int) ;
 int av_log (int ,int ,char*) ;
 double av_q2d (TYPE_23__) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 scalar_t__ is_clcp_track (TYPE_3__*) ;
 int mov_write_edts_tag (int *,TYPE_4__*,TYPE_3__*) ;
 int mov_write_mdia_tag (int *,int *,TYPE_4__*,TYPE_3__*) ;
 int mov_write_tapt_tag (int *,TYPE_3__*) ;
 int mov_write_tkhd_tag (int *,TYPE_4__*,TYPE_3__*,TYPE_5__*) ;
 int mov_write_track_udta_tag (int *,TYPE_4__*,TYPE_5__*) ;
 int mov_write_tref_tag (int *,TYPE_3__*) ;
 int mov_write_udta_sdp (int *,TYPE_3__*) ;
 int mov_write_uuid_tag_psp (int *,TYPE_3__*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_trak_tag(AVFormatContext *s, AVIOContext *pb, MOVMuxContext *mov,
                              MOVTrack *track, AVStream *st)
{
    int64_t pos = avio_tell(pb);
    int entry_backup = track->entry;
    int chunk_backup = track->chunkCount;
    int ret;



    if (mov->flags & FF_MOV_FLAG_EMPTY_MOOV)
        track->chunkCount = track->entry = 0;

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "trak");
    mov_write_tkhd_tag(pb, mov, track, st);

    av_assert2(mov->use_editlist >= 0);

    if (track->start_dts != AV_NOPTS_VALUE) {
        if (mov->use_editlist)
            mov_write_edts_tag(pb, mov, track);
        else if ((track->entry && track->cluster[0].dts) || track->mode == MODE_PSP || is_clcp_track(track))
            av_log(mov->fc, AV_LOG_WARNING,
                   "Not writing any edit list even though one would have been required\n");
    }

    if (track->tref_tag)
        mov_write_tref_tag(pb, track);

    if ((ret = mov_write_mdia_tag(s, pb, mov, track)) < 0)
        return ret;
    if (track->mode == MODE_PSP)
        mov_write_uuid_tag_psp(pb, track);
    if (track->tag == MKTAG('r','t','p',' '))
        mov_write_udta_sdp(pb, track);
    if (track->mode == MODE_MOV) {
        if (track->par->codec_type == AVMEDIA_TYPE_VIDEO) {
            double sample_aspect_ratio = av_q2d(st->sample_aspect_ratio);
            if (st->sample_aspect_ratio.num && 1.0 != sample_aspect_ratio) {
                mov_write_tapt_tag(pb, track);
            }
        }
        if (is_clcp_track(track) && st->sample_aspect_ratio.num) {
            mov_write_tapt_tag(pb, track);
        }
    }
    mov_write_track_udta_tag(pb, mov, st);
    track->entry = entry_backup;
    track->chunkCount = chunk_backup;
    return update_size(pb, pos);
}
