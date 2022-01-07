
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int extradata; scalar_t__ extradata_size; } ;
struct TYPE_10__ {int codec_str; TYPE_2__* ctx; } ;
struct TYPE_9__ {TYPE_1__** streams; } ;
struct TYPE_8__ {TYPE_4__* codecpar; } ;
typedef TYPE_3__ OutputStream ;
typedef int AVRational ;
typedef int AVPacket ;
typedef int AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 int AV_PKT_DATA_NEW_EXTRADATA ;
 int * av_packet_get_side_data (int *,int ,int*) ;
 int ff_alloc_extradata (TYPE_4__*,int) ;
 int memcpy (int ,int *,int) ;
 int set_codec_str (int *,TYPE_4__*,int *,int ,int) ;

__attribute__((used)) static int update_stream_extradata(AVFormatContext *s, OutputStream *os,
                                   AVPacket *pkt, AVRational *frame_rate)
{
    AVCodecParameters *par = os->ctx->streams[0]->codecpar;
    uint8_t *extradata;
    int ret, extradata_size;

    if (par->extradata_size)
        return 0;

    extradata = av_packet_get_side_data(pkt, AV_PKT_DATA_NEW_EXTRADATA, &extradata_size);
    if (!extradata_size)
        return 0;

    ret = ff_alloc_extradata(par, extradata_size);
    if (ret < 0)
        return ret;

    memcpy(par->extradata, extradata, extradata_size);

    set_codec_str(s, par, frame_rate, os->codec_str, sizeof(os->codec_str));

    return 0;
}
