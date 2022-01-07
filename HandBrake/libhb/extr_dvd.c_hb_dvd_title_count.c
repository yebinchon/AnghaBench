
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hb_dvd_t ;
struct TYPE_2__ {int (* title_count ) (int *) ;} ;


 TYPE_1__* dvd_methods ;
 int stub1 (int *) ;

int hb_dvd_title_count( hb_dvd_t * d )
{
    return dvd_methods->title_count(d);
}
