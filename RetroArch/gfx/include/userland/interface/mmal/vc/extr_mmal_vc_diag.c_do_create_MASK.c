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
typedef  int MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(int argc, const char **argv)
{
   MMAL_COMPONENT_T *comp;
   MMAL_STATUS_T st;
   if (argc != 3)
   {
      FUNC2("usage: mmal-vc-diag create <name>\n");
      FUNC2("   e.g. vc.camera\n");
      FUNC0(1);
   }
   st = FUNC1(argv[2], &comp);
   if (comp)
      FUNC2("Created component\n");
   else
      FUNC2("Failed to create %s: %d\n", argv[2], st);

   return 0;
}