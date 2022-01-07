
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prev_stereo_weights; int * frame; } ;
typedef TYPE_1__ SilkContext ;


 int memset (int ,int ,int) ;
 int silk_flush_frame (int *) ;

void ff_silk_flush(SilkContext *s)
{
    silk_flush_frame(&s->frame[0]);
    silk_flush_frame(&s->frame[1]);

    memset(s->prev_stereo_weights, 0, sizeof(s->prev_stereo_weights));
}
