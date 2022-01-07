
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cond_alert_full; } ;
typedef TYPE_1__ hb_fifo_t ;
typedef int hb_cond_t ;



void hb_fifo_register_full_cond( hb_fifo_t * f, hb_cond_t * c )
{
    f->cond_alert_full = c;
}
