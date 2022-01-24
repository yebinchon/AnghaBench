#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ open_r; scalar_t__ deviceData; } ;
typedef  TYPE_1__ devoptab_t ;
struct TYPE_5__ {scalar_t__ open_r; } ;
typedef  int /*<<< orphan*/  PARTITION ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__ dotab_fat ; 

void FUNC4 (const char* name)
{
   devoptab_t *devops;
   PARTITION* partition;

   if(!name)
      return;

   devops = (devoptab_t*)FUNC0 (name);
   if (!devops)
      return;

   /* Perform a quick check to make sure we're dealing with a libfat controlled device */
   if (devops->open_r != dotab_fat.open_r)
      return;

   if (FUNC1 (name) == -1)
      return;

   partition = (PARTITION*)devops->deviceData;
   FUNC3 (partition);
   FUNC2 (devops);
}