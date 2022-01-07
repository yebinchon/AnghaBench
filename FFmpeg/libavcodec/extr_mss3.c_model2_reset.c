
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zero_weight; int total_weight; int zero_freq; int total_freq; int upd_val; int till_rescale; } ;
typedef TYPE_1__ Model2 ;



__attribute__((used)) static void model2_reset(Model2 *m)
{
    m->zero_weight = 1;
    m->total_weight = 2;
    m->zero_freq = 0x1000;
    m->total_freq = 0x2000;
    m->upd_val = 4;
    m->till_rescale = 4;
}
