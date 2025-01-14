
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int last_chunk_pos; int last_timestamp_pos; int timeline_start_pos; int serial; int first_video_flag; scalar_t__ nb_index; } ;
typedef TYPE_2__ WtvContext ;
struct TYPE_16__ {int nb_streams; TYPE_3__** streams; TYPE_2__* priv_data; int * pb; } ;
struct TYPE_15__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {scalar_t__ codec_id; int codec_type; } ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 scalar_t__ AV_CODEC_ID_MJPEG ;
 int AV_LOG_ERROR ;
 int WTV_BIGSECTOR_BITS ;
 int WTV_SECTOR_BITS ;
 int av_log (TYPE_4__*,int ,char*,int ) ;
 int avio_tell (int *) ;
 int avio_wl32 (int *,int) ;
 int ff_put_guid (int *,int *) ;
 int ff_wtv_guid ;
 int sub_wtv_guid ;
 int write_index (TYPE_4__*) ;
 int write_pad (int *,int) ;
 int write_stream_codec (TYPE_4__*,TYPE_3__*) ;
 int write_stream_data (TYPE_4__*,TYPE_3__*) ;
 int write_sync (TYPE_4__*) ;

__attribute__((used)) static int write_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    WtvContext *wctx = s->priv_data;
    int i, pad, ret;
    AVStream *st;

    wctx->last_chunk_pos = -1;
    wctx->last_timestamp_pos = -1;

    ff_put_guid(pb, &ff_wtv_guid);
    ff_put_guid(pb, &sub_wtv_guid);

    avio_wl32(pb, 0x01);
    avio_wl32(pb, 0x02);
    avio_wl32(pb, 1 << WTV_SECTOR_BITS);
    avio_wl32(pb, 1 << WTV_BIGSECTOR_BITS);


    avio_wl32(pb, 0);
    write_pad(pb, 4);
    avio_wl32(pb, 0);

    write_pad(pb, 32);
    avio_wl32(pb, 0);

    pad = (1 << WTV_SECTOR_BITS) - avio_tell(pb);
    write_pad(pb, pad);

    wctx->timeline_start_pos = avio_tell(pb);

    wctx->serial = 1;
    wctx->last_chunk_pos = -1;
    wctx->first_video_flag = 1;

    for (i = 0; i < s->nb_streams; i++) {
        st = s->streams[i];
        if (st->codecpar->codec_id == AV_CODEC_ID_MJPEG)
            continue;
        ret = write_stream_codec(s, st);
        if (ret < 0) {
            av_log(s, AV_LOG_ERROR, "write stream codec failed codec_type(0x%x)\n", st->codecpar->codec_type);
            return -1;
        }
        if (!i)
            write_sync(s);
    }

    for (i = 0; i < s->nb_streams; i++) {
        st = s->streams[i];
        if (st->codecpar->codec_id == AV_CODEC_ID_MJPEG)
            continue;
        ret = write_stream_data(s, st);
        if (ret < 0) {
            av_log(s, AV_LOG_ERROR, "write stream data failed codec_type(0x%x)\n", st->codecpar->codec_type);
            return -1;
        }
    }

    if (wctx->nb_index)
        write_index(s);

    return 0;
}
