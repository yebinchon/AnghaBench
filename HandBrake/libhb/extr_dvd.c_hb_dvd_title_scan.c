
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int hb_title_t ;
typedef int hb_dvd_t ;
struct TYPE_2__ {int * (* title_scan ) (int *,int,int ) ;} ;


 TYPE_1__* dvd_methods ;
 int * stub1 (int *,int,int ) ;

hb_title_t * hb_dvd_title_scan( hb_dvd_t * d, int t, uint64_t min_duration )
{
    return dvd_methods->title_scan(d, t, min_duration);
}
