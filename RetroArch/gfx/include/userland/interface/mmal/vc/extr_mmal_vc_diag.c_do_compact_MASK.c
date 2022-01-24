#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_VC_COMPACT_AGGRESSIVE ; 
 int /*<<< orphan*/  MMAL_VC_COMPACT_DISCARD ; 
 int /*<<< orphan*/  MMAL_VC_COMPACT_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(int argc, const char **argv)
{
   uint32_t duration;

   if (argc > 2)
   {
      if (FUNC3(argv[2], "a") == 0)
      {
         FUNC1(MMAL_VC_COMPACT_AGGRESSIVE, &duration);
         FUNC2("Triggered aggressive compaction on VC - duration %u us.\n", duration);
      }
      else if (FUNC3(argv[2], "d") == 0)
      {
         FUNC1(MMAL_VC_COMPACT_DISCARD, &duration);
         FUNC2("Triggered discard compaction on VC - duration %u us.\n", duration);
      }
      else if (FUNC3(argv[2], "n") == 0)
      {
         FUNC1(MMAL_VC_COMPACT_NORMAL, &duration);
         FUNC2("Triggered normal compaction on VC - duration %u us.\n", duration);
      }
      else
      {
         FUNC2("Invalid memory compaction option %s\n.", argv[2]);
         FUNC0(1);
      }
   }
   else
   {
      FUNC2("Invalid memory compaction arguments.  Need to specify 'a', 'n' or 't'.\n");
      FUNC0(1);
   }
   return 0;
}