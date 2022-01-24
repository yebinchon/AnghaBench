#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stats ;
typedef  int VC_MEM_ADDR_T ;
typedef  int /*<<< orphan*/  VC_MEM_ACCESS_HANDLE_T ;
struct TYPE_5__ {int magic; int conversions; long time_spent; double last_image_ts; double first_image_ts; double size_requests; double max_vrf_delay; double vrf_wait_time; double duplicate_conversions; double failures; double max_delay; } ;
typedef  TYPE_1__ IMAGECONV_STATS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IMAGECONV_STATS_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int*,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,double) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(int argc, const char **argv)
{
   VC_MEM_ACCESS_HANDLE_T vc;
   VC_MEM_ADDR_T addr, statsaddr;
   size_t size;
   IMAGECONV_STATS_T stats;
   long convert_time;
   double frame_rate;
   int rc;
   int reset_stats = 0;

   if (argc > 2)
      reset_stats = FUNC9(argv[2], "reset") == 0;

   if ((rc = FUNC2(&vc)) < 0)
   {
      FUNC6(stderr,"Unable to open videocore memory: %d\n", rc);
      return -1;
   }
   if (!FUNC1(vc, "imageconv_stats", &addr, &size))
   {
      FUNC6(stderr,"Could not get imageconv stats address\n");
      goto fail;
   }
   if (!FUNC4(vc, &statsaddr, addr))
   {
      FUNC6(stderr, "Could not read imageconv stats address\n");
      goto fail;
   }

   if (reset_stats)
   {
      FUNC7(&stats, 0, sizeof(stats));
      stats.magic = IMAGECONV_STATS_MAGIC;
      if (!FUNC5(vc, &stats, statsaddr, sizeof(stats)))
      {
         FUNC6(stderr, "Could not write stats at 0x%x\n", statsaddr);
         goto fail;
      }
   }

   if (!FUNC3(vc, &stats, statsaddr, sizeof(stats)))
   {
      FUNC6(stderr, "Could not read stats at 0x%x\n", statsaddr);
      goto fail;
   }

   if (stats.magic != IMAGECONV_STATS_MAGIC)
   {
      FUNC6(stderr, "Bad magic 0x%x\n", stats.magic);
      goto fail;
   }

   if (stats.conversions)
      convert_time = stats.time_spent / stats.conversions;
   else
      convert_time = 0;

   if (stats.conversions)
      frame_rate = 1000000.0 * stats.conversions /
         (stats.last_image_ts - stats.first_image_ts);
   else
      frame_rate = 0;

   FUNC8("%-25s:\t%d\n", "conversions", stats.conversions);
   FUNC8("%-25s:\t%d\n", "size requests", stats.size_requests);
   FUNC8("%-25s:\t%d\n", "max vrf delay", stats.max_vrf_delay);
   FUNC8("%-25s:\t%d\n", "vrf wait time", stats.vrf_wait_time);
   FUNC8("%-25s:\t%d\n", "duplicate conversions", stats.duplicate_conversions);
   FUNC8("%-25s:\t%d\n", "failures", stats.failures);
   FUNC8("%-25s:\t%ld\n", "convert time / image (us)", convert_time);
   FUNC8("%-25s:\t%.1f\n", "client frame_rate", frame_rate);
   FUNC8("%-25s:\t%d us\n", "max delay to consume", stats.max_delay);

   FUNC0(vc);
   return 0;
fail:
   FUNC0(vc);
   return -1;

}