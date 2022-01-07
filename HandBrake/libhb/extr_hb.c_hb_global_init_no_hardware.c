
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_hardware ;
 int hb_global_init () ;

int hb_global_init_no_hardware()
{
    disable_hardware = 1;
    return hb_global_init();
}
