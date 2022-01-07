
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hb_title_t ;
typedef int hb_dvd_t ;
struct TYPE_2__ {int (* start ) (int *,int *,int) ;} ;


 TYPE_1__* dvd_methods ;
 int stub1 (int *,int *,int) ;

int hb_dvd_start( hb_dvd_t * d, hb_title_t *title, int chapter )
{
    return dvd_methods->start(d, title, chapter);
}
