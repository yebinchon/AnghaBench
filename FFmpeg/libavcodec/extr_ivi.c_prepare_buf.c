
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int luma_bands; } ;
struct TYPE_8__ {TYPE_1__ pic_conf; } ;
struct TYPE_7__ {void** bufs; int bufsize; } ;
typedef TYPE_2__ IVIBandDesc ;
typedef TYPE_3__ IVI45DecContext ;


 void* av_mallocz (int) ;

__attribute__((used)) static void *prepare_buf(IVI45DecContext *ctx, IVIBandDesc *band, int i)
{
    if (ctx->pic_conf.luma_bands <= 1 && i == 2)
        return ((void*)0);
    if (!band->bufs[i])
        band->bufs[i] = av_mallocz(2 * band->bufsize);
    return band->bufs[i];
}
