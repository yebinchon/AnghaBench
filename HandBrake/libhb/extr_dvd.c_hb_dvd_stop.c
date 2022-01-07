
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hb_dvd_t ;
struct TYPE_2__ {int (* stop ) (int *) ;} ;


 TYPE_1__* dvd_methods ;
 int stub1 (int *) ;

void hb_dvd_stop( hb_dvd_t * d )
{
    dvd_methods->stop(d);
}
