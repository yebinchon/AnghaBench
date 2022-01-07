
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * out; int temp_buffer; TYPE_2__* avf; } ;
typedef TYPE_1__ VariantStream ;
struct TYPE_6__ {int * pb; } ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_write_frame (TYPE_2__*,int *) ;
 int avio_close_dyn_buf (int *,int *) ;
 int avio_flush (int *) ;
 int avio_open_dyn_buf (int **) ;
 int avio_write (int *,int ,int) ;

__attribute__((used)) static int flush_dynbuf(VariantStream *vs, int *range_length)
{
    AVFormatContext *ctx = vs->avf;

    if (!ctx->pb) {
        return AVERROR(EINVAL);
    }


    av_write_frame(ctx, ((void*)0));
    avio_flush(ctx->pb);


    *range_length = avio_close_dyn_buf(ctx->pb, &vs->temp_buffer);
    ctx->pb = ((void*)0);
    avio_write(vs->out, vs->temp_buffer, *range_length);
    avio_flush(vs->out);


    return avio_open_dyn_buf(&ctx->pb);
}
