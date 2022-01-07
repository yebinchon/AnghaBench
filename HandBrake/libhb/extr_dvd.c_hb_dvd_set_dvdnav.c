
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dvd_methods ;
 int hb_dvdnav_methods () ;
 int hb_dvdread_methods () ;

void hb_dvd_set_dvdnav( int enable )
{
    if (enable)
        dvd_methods = hb_dvdnav_methods();
    else
        dvd_methods = hb_dvdread_methods();
}
