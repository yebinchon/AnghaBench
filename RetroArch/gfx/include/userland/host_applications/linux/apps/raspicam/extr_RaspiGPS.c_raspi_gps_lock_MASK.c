#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gps_data_t {int dummy; } ;
struct TYPE_2__ {struct gps_data_t gpsdata_cache; int /*<<< orphan*/  gps_cache_mutex; } ;

/* Variables and functions */
 TYPE_1__ gps_reader_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

struct gps_data_t *FUNC1()
{
   FUNC0(&gps_reader_data.gps_cache_mutex);
   return &gps_reader_data.gpsdata_cache;
}