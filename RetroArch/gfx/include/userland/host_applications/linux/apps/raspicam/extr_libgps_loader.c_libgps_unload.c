
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * libgps_handle; } ;
typedef TYPE_1__ gpsd_info ;


 int disconnect_gpsd (TYPE_1__*) ;
 int dlclose (int *) ;

void libgps_unload(gpsd_info *gpsd)
{
   if (gpsd->libgps_handle)
   {
      disconnect_gpsd(gpsd);
      dlclose(gpsd->libgps_handle);
      gpsd->libgps_handle = ((void*)0);
   }
}
