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
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* finalize ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/ * recording_data ; 
 TYPE_1__* recording_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static bool FUNC3(void)
{
   if (!recording_data || !recording_driver)
      return false;

   if (recording_driver->finalize)
      recording_driver->finalize(recording_data);

   if (recording_driver->free)
      recording_driver->free(recording_data);

   recording_data            = NULL;
   recording_driver          = NULL;

   FUNC2();

   return true;
}