
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ gpsd_connected; int gpsdata; int (* gps_close ) (int *) ;int (* gps_stream ) (int *,int ,int *) ;int * libgps_handle; } ;
typedef TYPE_1__ gpsd_info ;


 int WATCH_DISABLE ;
 int stub1 (int *,int ,int *) ;
 int stub2 (int *) ;

int disconnect_gpsd(gpsd_info *gpsd)
{
   if (gpsd->libgps_handle == ((void*)0))
      return -1;
   if (gpsd->gpsd_connected)
   {
      gpsd->gps_stream(&gpsd->gpsdata, WATCH_DISABLE, ((void*)0));
      gpsd->gps_close(&gpsd->gpsdata);
      gpsd->gpsd_connected = 0;
   }
   return 0;
}
