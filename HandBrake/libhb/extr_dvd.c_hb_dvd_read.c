
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hb_dvd_t ;
typedef int hb_buffer_t ;
struct TYPE_2__ {int * (* read ) (int *) ;} ;


 TYPE_1__* dvd_methods ;
 int * stub1 (int *) ;

hb_buffer_t * hb_dvd_read( hb_dvd_t * d )
{
    return dvd_methods->read(d);
}
