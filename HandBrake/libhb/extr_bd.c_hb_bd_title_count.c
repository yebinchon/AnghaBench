
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int title_count; } ;
typedef TYPE_1__ hb_bd_t ;



int hb_bd_title_count( hb_bd_t * d )
{
    return d->title_count;
}
