
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int * pb; } ;
struct TYPE_13__ {int index; TYPE_1__* codecpar; } ;
struct TYPE_12__ {int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AV_LOG_ERROR ;
 int INDEX_BASE ;
 int av_log (TYPE_3__*,int ,char*,int ) ;
 int avio_wl32 (int *,int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 int ff_SBE2_STREAM_DESC_EVENT ;
 int finish_chunk (TYPE_3__*) ;
 int write_chunk_header2 (TYPE_3__*,int *,int) ;
 int write_pad (int *,int) ;
 int write_stream_codec_info (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int write_stream_data(AVFormatContext *s, AVStream *st)
{
    AVIOContext *pb = s->pb;
    int ret;

    write_chunk_header2(s, &ff_SBE2_STREAM_DESC_EVENT, 0x80000000 | (st->index + INDEX_BASE));
    avio_wl32(pb, 0x00000001);
    avio_wl32(pb, st->index + INDEX_BASE);
    avio_wl32(pb, 0x00000001);
    write_pad(pb, 8);

    ret = write_stream_codec_info(s, st);
    if (ret < 0) {
        av_log(s, AV_LOG_ERROR, "write stream codec info failed codec_type(0x%x)\n", st->codecpar->codec_type);
        return -1;
    }
    finish_chunk(s);

    avpriv_set_pts_info(st, 64, 1, 10000000);

    return 0;
}
