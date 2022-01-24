#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  libgps_handle; int /*<<< orphan*/  gps_stream; int /*<<< orphan*/  gps_errstr; int /*<<< orphan*/  gps_close; int /*<<< orphan*/  gps_open; int /*<<< orphan*/  gps_waiting; int /*<<< orphan*/  gps_read; } ;
typedef  TYPE_1__ gpsd_info ;

/* Variables and functions */
 int /*<<< orphan*/  LIBGPS_FILE ; 
 int /*<<< orphan*/  RTLD_LAZY ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (void**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(gpsd_info *gpsd)
{
   int err = 0;

   gpsd->libgps_handle = FUNC1(LIBGPS_FILE, RTLD_LAZY);
   if (!gpsd->libgps_handle)
   {
      FUNC2(stderr, "%s\n", FUNC0());
      return -1;
   }

   err |= FUNC3((void **)(&gpsd->gps_read),    gpsd->libgps_handle, "gps_read");
   err |= FUNC3((void **)(&gpsd->gps_waiting), gpsd->libgps_handle, "gps_waiting");
   err |= FUNC3((void **)(&gpsd->gps_open),    gpsd->libgps_handle, "gps_open");
   err |= FUNC3((void **)(&gpsd->gps_close),   gpsd->libgps_handle, "gps_close");
   err |= FUNC3((void **)(&gpsd->gps_errstr),  gpsd->libgps_handle, "gps_errstr");
   err |= FUNC3((void **)(&gpsd->gps_stream),  gpsd->libgps_handle, "gps_stream");
   if (err)
      return -1;

   return 0;
}