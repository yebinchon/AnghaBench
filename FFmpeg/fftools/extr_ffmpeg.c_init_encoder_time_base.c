
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int * ctx; } ;
struct TYPE_14__ {scalar_t__ num; } ;
struct TYPE_15__ {TYPE_4__ time_base; } ;
struct TYPE_13__ {TYPE_1__* st; } ;
struct TYPE_12__ {size_t file_index; TYPE_4__ enc_timebase; TYPE_5__* enc_ctx; } ;
struct TYPE_11__ {TYPE_4__ time_base; } ;
typedef TYPE_2__ OutputStream ;
typedef TYPE_3__ InputStream ;
typedef TYPE_4__ AVRational ;
typedef int AVFormatContext ;
typedef TYPE_5__ AVCodecContext ;


 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*) ;
 TYPE_3__* get_input_stream (TYPE_2__*) ;
 TYPE_6__** output_files ;

__attribute__((used)) static void init_encoder_time_base(OutputStream *ost, AVRational default_time_base)
{
    InputStream *ist = get_input_stream(ost);
    AVCodecContext *enc_ctx = ost->enc_ctx;
    AVFormatContext *oc;

    if (ost->enc_timebase.num > 0) {
        enc_ctx->time_base = ost->enc_timebase;
        return;
    }

    if (ost->enc_timebase.num < 0) {
        if (ist) {
            enc_ctx->time_base = ist->st->time_base;
            return;
        }

        oc = output_files[ost->file_index]->ctx;
        av_log(oc, AV_LOG_WARNING, "Input stream data not available, using default time base\n");
    }

    enc_ctx->time_base = default_time_base;
}
