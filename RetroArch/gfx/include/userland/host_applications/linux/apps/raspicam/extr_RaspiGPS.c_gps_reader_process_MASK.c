#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct gps_data_t {int dummy; } ;
struct TYPE_9__ {scalar_t__ mode; int /*<<< orphan*/  time; } ;
struct TYPE_12__ {int set; TYPE_2__ fix; scalar_t__ online; } ;
struct TYPE_10__ {TYPE_5__ gpsdata; } ;
struct TYPE_8__ {int /*<<< orphan*/  time; scalar_t__ mode; } ;
struct TYPE_11__ {int set; TYPE_1__ fix; scalar_t__ online; } ;
struct TYPE_13__ {scalar_t__ last_valid_time; int /*<<< orphan*/  gps_cache_mutex; TYPE_3__ gpsd; TYPE_4__ gpsdata_cache; int /*<<< orphan*/  terminated; } ;

/* Variables and functions */
 scalar_t__ GPS_CACHE_EXPIRY ; 
 scalar_t__ MODE_2D ; 
 int TIME_SET ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 TYPE_6__ gps_reader_data ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

__attribute__((used)) static void *FUNC6(void *gps_reader_data_ptr)
{
   while (!gps_reader_data.terminated)
   {
      int ret = 0;
      int gps_valid = 0;

      gps_reader_data.gpsd.gpsdata.set = 0;
      gps_reader_data.gpsd.gpsdata.fix.mode = 0;
      if (FUNC0(&gps_reader_data.gpsd) < 0 ||
            (ret = FUNC4(&gps_reader_data.gpsd)) < 0 )
         break;

      if (ret > 0 && gps_reader_data.gpsd.gpsdata.online)
      {
         if (gps_reader_data.gpsd.gpsdata.fix.mode >= MODE_2D)
         {
            // we have GPS fix, copy fresh data to cache
            gps_valid = 1;
            FUNC5(&gps_reader_data.last_valid_time);
            FUNC2(&gps_reader_data.gps_cache_mutex);
            FUNC1(&gps_reader_data.gpsdata_cache, &gps_reader_data.gpsd.gpsdata,
                   sizeof(struct gps_data_t));
            FUNC3(&gps_reader_data.gps_cache_mutex);
         }
      }
      if (!gps_valid)
      {
         time_t now;
         FUNC5(&now);
         if (now - gps_reader_data.last_valid_time > GPS_CACHE_EXPIRY)
         {
            // our cache is stale, clear it
            FUNC2(&gps_reader_data.gps_cache_mutex);
            gps_reader_data.gpsdata_cache.online = gps_reader_data.gpsd.gpsdata.online;
            gps_reader_data.gpsdata_cache.set = 0;
            gps_reader_data.gpsdata_cache.fix.mode = 0;
            FUNC3(&gps_reader_data.gps_cache_mutex);
         }
         // we lost GPS fix, copy GPS time to cache if available
         if (gps_reader_data.gpsd.gpsdata.set & TIME_SET)
         {
            FUNC2(&gps_reader_data.gps_cache_mutex);
            gps_reader_data.gpsdata_cache.set |= TIME_SET;
            gps_reader_data.gpsdata_cache.fix.time = gps_reader_data.gpsd.gpsdata.fix.time;
            FUNC3(&gps_reader_data.gps_cache_mutex);
         }
      }
   }
   return NULL;
}