
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bd; } ;
typedef TYPE_1__ hb_bd_t ;


 int bd_select_angle (int ,int) ;
 int hb_log (char*) ;

void hb_bd_set_angle( hb_bd_t * d, int angle )
{

    if ( !bd_select_angle( d->bd, angle) )
    {
        hb_log("bd_select_angle failed");
    }
}
