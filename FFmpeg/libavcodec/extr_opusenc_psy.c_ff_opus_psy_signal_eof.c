
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eof; } ;
typedef TYPE_1__ OpusPsyContext ;



void ff_opus_psy_signal_eof(OpusPsyContext *s)
{
    s->eof = 1;
}
