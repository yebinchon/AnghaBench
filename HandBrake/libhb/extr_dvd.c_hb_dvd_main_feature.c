
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hb_list_t ;
typedef int hb_dvd_t ;
struct TYPE_2__ {int (* main_feature ) (int *,int *) ;} ;


 TYPE_1__* dvd_methods ;
 int stub1 (int *,int *) ;

int hb_dvd_main_feature( hb_dvd_t * d, hb_list_t * list_title )
{
    return dvd_methods->main_feature(d, list_title);
}
