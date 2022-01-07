
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hb_handle_t ;
typedef int hb_dvd_t ;
struct TYPE_2__ {int * (* init ) (int *,char const*) ;} ;


 TYPE_1__* dvd_methods ;
 int * stub1 (int *,char const*) ;

hb_dvd_t * hb_dvd_init( hb_handle_t * h, const char * path )
{
    return dvd_methods->init(h, path);
}
