
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* gps_read ) (int *) ;scalar_t__ gpsd_connected; int gpsdata; int (* gps_close ) (int *) ;scalar_t__ (* gps_waiting ) (int *,int) ;int * libgps_handle; } ;
typedef TYPE_1__ gpsd_info ;


 scalar_t__ stub1 (int *,int) ;
 int stub2 (int *) ;
 int stub3 (int *) ;

int read_gps_data_once(gpsd_info *gpsd)
{
   if (gpsd->libgps_handle == ((void*)0))
      return -1;
   if (gpsd->gpsd_connected)
   {
      if (gpsd->gps_waiting(&gpsd->gpsdata, 200))
      {
         int ret = gpsd->gps_read(&gpsd->gpsdata);
         if (ret < 0)
         {
            gpsd->gps_close(&gpsd->gpsdata);
            gpsd->gpsd_connected = 0;
            ret = 0;
         }
         return ret;
      }
   }
   return 0;
}
