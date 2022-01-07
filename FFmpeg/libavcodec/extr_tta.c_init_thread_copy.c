
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {TYPE_2__* avctx; } ;
typedef TYPE_1__ TTAContext ;
typedef TYPE_2__ AVCodecContext ;


 int allocate_buffers (TYPE_2__*) ;

__attribute__((used)) static int init_thread_copy(AVCodecContext *avctx)
{
    TTAContext *s = avctx->priv_data;
    s->avctx = avctx;
    return allocate_buffers(avctx);
}
