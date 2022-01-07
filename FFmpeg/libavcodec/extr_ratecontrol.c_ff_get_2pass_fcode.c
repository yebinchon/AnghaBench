
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* entry; } ;
struct TYPE_7__ {size_t picture_number; int b_code; int f_code; TYPE_2__ rc_context; } ;
struct TYPE_5__ {int b_code; int f_code; } ;
typedef TYPE_1__ RateControlEntry ;
typedef TYPE_2__ RateControlContext ;
typedef TYPE_3__ MpegEncContext ;



void ff_get_2pass_fcode(MpegEncContext *s)
{
    RateControlContext *rcc = &s->rc_context;
    RateControlEntry *rce = &rcc->entry[s->picture_number];

    s->f_code = rce->f_code;
    s->b_code = rce->b_code;
}
