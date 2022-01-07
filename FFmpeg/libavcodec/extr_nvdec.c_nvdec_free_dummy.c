
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVHWFramesContext {int pool; } ;


 int av_buffer_pool_uninit (int *) ;

__attribute__((used)) static void nvdec_free_dummy(struct AVHWFramesContext *ctx)
{
    av_buffer_pool_uninit(&ctx->pool);
}
