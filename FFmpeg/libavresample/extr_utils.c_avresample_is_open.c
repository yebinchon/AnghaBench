
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int out_fifo; } ;
typedef TYPE_1__ AVAudioResampleContext ;



int avresample_is_open(AVAudioResampleContext *avr)
{
    return !!avr->out_fifo;
}
