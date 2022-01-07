
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a53_caption; scalar_t__ a53_caption_size; } ;
struct TYPE_5__ {TYPE_1__ a53_caption; } ;
typedef TYPE_2__ HEVCSEI ;


 int av_freep (int *) ;

void ff_hevc_reset_sei(HEVCSEI *s)
{
    s->a53_caption.a53_caption_size = 0;
    av_freep(&s->a53_caption.a53_caption);
}
