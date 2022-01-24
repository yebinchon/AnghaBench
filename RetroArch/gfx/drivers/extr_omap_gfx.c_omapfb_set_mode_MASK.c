#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fd; scalar_t__ sync; } ;
typedef  TYPE_1__ omapfb_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  OMAPFB_WAITFORGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC5(omapfb_data_t *pdata, int width, int height)
{
   if (pdata->sync)
      FUNC0(pdata->fd, OMAPFB_WAITFORGO);

   if (FUNC3(pdata, width, height) != 0)
      return -1;

   if (FUNC4(pdata, width, height) != 0 ||
         FUNC2(pdata) != 0 ||
         FUNC1(pdata) != 0)
      return -1;

   return 0;
}