
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* weights; int upd_val; int till_rescale; scalar_t__ tot_weight; } ;
typedef TYPE_1__ Model256 ;


 int model256_update (TYPE_1__*,int) ;

__attribute__((used)) static void model256_reset(Model256 *m)
{
    int i;

    for (i = 0; i < 255; i++)
        m->weights[i] = 1;
    m->weights[255] = 0;

    m->tot_weight = 0;
    m->upd_val = 256;
    m->till_rescale = 1;
    model256_update(m, 255);
    m->till_rescale =
    m->upd_val = (256 + 6) >> 1;
}
