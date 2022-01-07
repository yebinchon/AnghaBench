
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gpsd_connected; scalar_t__ (* gps_open ) (int ,int ,int *) ;int gpsdata; int (* gps_stream ) (int *,int ,int *) ;int port; int server; int * libgps_handle; } ;
typedef TYPE_1__ gpsd_info ;


 int WATCH_ENABLE ;
 scalar_t__ stub1 (int ,int ,int *) ;
 int stub2 (int *,int ,int *) ;

int connect_gpsd(gpsd_info *gpsd)
{
   if (gpsd->libgps_handle == ((void*)0))
      return -1;
   if (!gpsd->gpsd_connected)
   {
      if (gpsd->gps_open(gpsd->server, gpsd->port, &gpsd->gpsdata) != 0)
         return -1;
      gpsd->gpsd_connected = 1;
      gpsd->gps_stream(&gpsd->gpsdata, WATCH_ENABLE, ((void*)0));
   }
   return 0;
}
