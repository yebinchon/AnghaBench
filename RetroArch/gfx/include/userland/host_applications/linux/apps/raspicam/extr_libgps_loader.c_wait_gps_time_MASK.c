#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
struct TYPE_6__ {int set; scalar_t__ online; } ;
struct TYPE_5__ {TYPE_3__ gpsdata; scalar_t__ (* gps_waiting ) (TYPE_3__*,int) ;scalar_t__ gpsd_connected; int /*<<< orphan*/ * libgps_handle; } ;
typedef  TYPE_1__ gpsd_info ;
typedef  int gps_mask_t ;

/* Variables and functions */
 int TIME_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(gpsd_info *gpsd, int timeout_s)
{
   if (gpsd->libgps_handle == NULL)
      return -1;
   if (gpsd->gpsd_connected)
   {
      gps_mask_t mask = TIME_SET;
      time_t start = FUNC2(NULL);
      while ((FUNC2(NULL) - start < timeout_s) &&
             ((!gpsd->gpsdata.online) || ((gpsd->gpsdata.set & mask) == 0)))
      {
         if (gpsd->gps_waiting(&gpsd->gpsdata, 200))
            FUNC0(gpsd);
      }
      if ((gpsd->gpsdata.online) && ((gpsd->gpsdata.set & mask) != 0))
         return 0;
   }
   return -1;
}