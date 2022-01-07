
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_17__ {int nb_streams; TYPE_5__** streams; int * pb; TYPE_4__* priv_data; } ;
struct TYPE_16__ {TYPE_2__* codecpar; TYPE_3__* priv_data; } ;
struct TYPE_12__ {int drop; } ;
struct TYPE_14__ {int media_info; int sample_size; int sample_rate; int track_type; } ;
struct TYPE_15__ {int umf_media_offset; int umf_start_offset; TYPE_1__ tc; TYPE_3__ timecode_track; int nb_fields; } ;
struct TYPE_13__ {int codec_id; } ;
typedef TYPE_3__ GXFStreamContext ;
typedef TYPE_4__ GXFContext ;
typedef TYPE_5__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_6__ AVFormatContext ;






 int ES_NAME_PATTERN ;
 int SEEK_SET ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int ) ;
 int avio_wb16 (int *,int) ;
 int avio_wl16 (int *,int) ;
 int avio_wl32 (int *,int ) ;
 int avio_write (int *,int ,int) ;
 int gxf_write_umf_media_audio (int *,TYPE_3__*) ;
 int gxf_write_umf_media_dv (int *,TYPE_3__*,TYPE_5__*) ;
 int gxf_write_umf_media_mpeg (int *,TYPE_5__*) ;
 int gxf_write_umf_media_timecode (int *,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int gxf_write_umf_media_description(AVFormatContext *s)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t pos;
    int i, j;

    pos = avio_tell(pb);
    gxf->umf_media_offset = pos - gxf->umf_start_offset;
    for (i = 0; i <= s->nb_streams; ++i) {
        GXFStreamContext *sc;
        int64_t startpos, curpos;

        if (i == s->nb_streams)
            sc = &gxf->timecode_track;
        else
            sc = s->streams[i]->priv_data;

        startpos = avio_tell(pb);
        avio_wl16(pb, 0);
        avio_wl16(pb, sc->media_info);
        avio_wl16(pb, 0);
        avio_wl16(pb, 0);
        avio_wl32(pb, gxf->nb_fields);
        avio_wl32(pb, 0);
        avio_wl32(pb, 0);
        avio_wl32(pb, gxf->nb_fields);
        avio_write(pb, ES_NAME_PATTERN, strlen(ES_NAME_PATTERN));
        avio_wb16(pb, sc->media_info);
        for (j = strlen(ES_NAME_PATTERN)+2; j < 88; j++)
            avio_w8(pb, 0);
        avio_wl32(pb, sc->track_type);
        avio_wl32(pb, sc->sample_rate);
        avio_wl32(pb, sc->sample_size);
        avio_wl32(pb, 0);

        if (sc == &gxf->timecode_track)
            gxf_write_umf_media_timecode(pb, gxf->tc.drop);
        else {
            AVStream *st = s->streams[i];
            switch (st->codecpar->codec_id) {
            case 130:
            case 129:
                gxf_write_umf_media_mpeg(pb, st);
                break;
            case 128:
                gxf_write_umf_media_audio(pb, sc);
                break;
            case 131:
                gxf_write_umf_media_dv(pb, sc, st);
                break;
            }
        }

        curpos = avio_tell(pb);
        avio_seek(pb, startpos, SEEK_SET);
        avio_wl16(pb, curpos - startpos);
        avio_seek(pb, curpos, SEEK_SET);
    }
    return avio_tell(pb) - pos;
}
