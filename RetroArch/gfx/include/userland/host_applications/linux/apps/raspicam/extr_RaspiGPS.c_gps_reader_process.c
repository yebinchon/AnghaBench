
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct gps_data_t {int dummy; } ;
struct TYPE_9__ {scalar_t__ mode; int time; } ;
struct TYPE_12__ {int set; TYPE_2__ fix; scalar_t__ online; } ;
struct TYPE_10__ {TYPE_5__ gpsdata; } ;
struct TYPE_8__ {int time; scalar_t__ mode; } ;
struct TYPE_11__ {int set; TYPE_1__ fix; scalar_t__ online; } ;
struct TYPE_13__ {scalar_t__ last_valid_time; int gps_cache_mutex; TYPE_3__ gpsd; TYPE_4__ gpsdata_cache; int terminated; } ;


 scalar_t__ GPS_CACHE_EXPIRY ;
 scalar_t__ MODE_2D ;
 int TIME_SET ;
 scalar_t__ connect_gpsd (TYPE_3__*) ;
 TYPE_6__ gps_reader_data ;
 int memcpy (TYPE_4__*,TYPE_5__*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int read_gps_data_once (TYPE_3__*) ;
 int time (scalar_t__*) ;

__attribute__((used)) static void *gps_reader_process(void *gps_reader_data_ptr)
{
   while (!gps_reader_data.terminated)
   {
      int ret = 0;
      int gps_valid = 0;

      gps_reader_data.gpsd.gpsdata.set = 0;
      gps_reader_data.gpsd.gpsdata.fix.mode = 0;
      if (connect_gpsd(&gps_reader_data.gpsd) < 0 ||
            (ret = read_gps_data_once(&gps_reader_data.gpsd)) < 0 )
         break;

      if (ret > 0 && gps_reader_data.gpsd.gpsdata.online)
      {
         if (gps_reader_data.gpsd.gpsdata.fix.mode >= MODE_2D)
         {

            gps_valid = 1;
            time(&gps_reader_data.last_valid_time);
            pthread_mutex_lock(&gps_reader_data.gps_cache_mutex);
            memcpy(&gps_reader_data.gpsdata_cache, &gps_reader_data.gpsd.gpsdata,
                   sizeof(struct gps_data_t));
            pthread_mutex_unlock(&gps_reader_data.gps_cache_mutex);
         }
      }
      if (!gps_valid)
      {
         time_t now;
         time(&now);
         if (now - gps_reader_data.last_valid_time > GPS_CACHE_EXPIRY)
         {

            pthread_mutex_lock(&gps_reader_data.gps_cache_mutex);
            gps_reader_data.gpsdata_cache.online = gps_reader_data.gpsd.gpsdata.online;
            gps_reader_data.gpsdata_cache.set = 0;
            gps_reader_data.gpsdata_cache.fix.mode = 0;
            pthread_mutex_unlock(&gps_reader_data.gps_cache_mutex);
         }

         if (gps_reader_data.gpsd.gpsdata.set & TIME_SET)
         {
            pthread_mutex_lock(&gps_reader_data.gps_cache_mutex);
            gps_reader_data.gpsdata_cache.set |= TIME_SET;
            gps_reader_data.gpsdata_cache.fix.time = gps_reader_data.gpsd.gpsdata.fix.time;
            pthread_mutex_unlock(&gps_reader_data.gps_cache_mutex);
         }
      }
   }
   return ((void*)0);
}
