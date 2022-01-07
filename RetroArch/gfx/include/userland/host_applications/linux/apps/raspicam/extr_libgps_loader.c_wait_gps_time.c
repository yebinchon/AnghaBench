
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_6__ {int set; scalar_t__ online; } ;
struct TYPE_5__ {TYPE_3__ gpsdata; scalar_t__ (* gps_waiting ) (TYPE_3__*,int) ;scalar_t__ gpsd_connected; int * libgps_handle; } ;
typedef TYPE_1__ gpsd_info ;
typedef int gps_mask_t ;


 int TIME_SET ;
 int read_gps_data_once (TYPE_1__*) ;
 scalar_t__ stub1 (TYPE_3__*,int) ;
 int time (int *) ;

int wait_gps_time(gpsd_info *gpsd, int timeout_s)
{
   if (gpsd->libgps_handle == ((void*)0))
      return -1;
   if (gpsd->gpsd_connected)
   {
      gps_mask_t mask = TIME_SET;
      time_t start = time(((void*)0));
      while ((time(((void*)0)) - start < timeout_s) &&
             ((!gpsd->gpsdata.online) || ((gpsd->gpsdata.set & mask) == 0)))
      {
         if (gpsd->gps_waiting(&gpsd->gpsdata, 200))
            read_gps_data_once(gpsd);
      }
      if ((gpsd->gpsdata.online) && ((gpsd->gpsdata.set & mask) != 0))
         return 0;
   }
   return -1;
}
