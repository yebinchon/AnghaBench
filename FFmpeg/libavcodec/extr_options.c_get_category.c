
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* codec; } ;
struct TYPE_3__ {scalar_t__ decode; } ;
typedef TYPE_2__ AVCodecContext ;
typedef int AVClassCategory ;


 int AV_CLASS_CATEGORY_DECODER ;
 int AV_CLASS_CATEGORY_ENCODER ;

__attribute__((used)) static AVClassCategory get_category(void *ptr)
{
    AVCodecContext* avctx = ptr;
    if(avctx->codec && avctx->codec->decode) return AV_CLASS_CATEGORY_DECODER;
    else return AV_CLASS_CATEGORY_ENCODER;
}
