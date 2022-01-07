
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* enc_ctx; } ;
struct TYPE_5__ {TYPE_1__* codec; } ;
struct TYPE_4__ {int capabilities; } ;


 int AV_CODEC_CAP_DELAY ;
 int AV_LOG_INFO ;
 int av_log (int *,int ,char*,unsigned int) ;
 int encode_write_frame (int *,unsigned int,int*) ;
 TYPE_3__* stream_ctx ;

__attribute__((used)) static int flush_encoder(unsigned int stream_index)
{
    int ret;
    int got_frame;

    if (!(stream_ctx[stream_index].enc_ctx->codec->capabilities &
                AV_CODEC_CAP_DELAY))
        return 0;

    while (1) {
        av_log(((void*)0), AV_LOG_INFO, "Flushing stream #%u encoder\n", stream_index);
        ret = encode_write_frame(((void*)0), stream_index, &got_frame);
        if (ret < 0)
            break;
        if (!got_frame)
            return 0;
    }
    return ret;
}
