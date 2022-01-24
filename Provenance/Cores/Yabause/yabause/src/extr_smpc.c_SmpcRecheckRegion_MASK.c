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
struct TYPE_2__ {scalar_t__ regionsetting; int regionid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 scalar_t__ REGION_AUTODETECT ; 
 TYPE_1__* SmpcInternalVars ; 

void FUNC2(void) {
   if (SmpcInternalVars == NULL)
      return;

   if (SmpcInternalVars->regionsetting == REGION_AUTODETECT)
   {
      // Time to autodetect the region using the cd block
      SmpcInternalVars->regionid = FUNC1();

      // Since we couldn't detect the region from the CD, let's assume
      // it's japanese
      if (SmpcInternalVars->regionid == 0)
         SmpcInternalVars->regionid = 1;
   }
   else
      FUNC0(0);
}