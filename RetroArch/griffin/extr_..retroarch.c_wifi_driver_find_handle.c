
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** wifi_drivers ;

__attribute__((used)) static const void *wifi_driver_find_handle(int idx)
{
   const void *drv = wifi_drivers[idx];
   if (!drv)
      return ((void*)0);
   return drv;
}
