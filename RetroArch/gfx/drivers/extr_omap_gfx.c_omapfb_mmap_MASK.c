#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * fb_mem; int /*<<< orphan*/  fd; TYPE_2__* current_state; } ;
typedef  TYPE_3__ omapfb_data_t ;
struct TYPE_5__ {int /*<<< orphan*/  size; } ;
struct TYPE_6__ {TYPE_1__ mi; } ;

/* Variables and functions */
 int /*<<< orphan*/ * MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(omapfb_data_t *pdata)
{
   FUNC2(pdata->fb_mem == NULL);

   pdata->fb_mem = FUNC1(NULL, pdata->current_state->mi.size, PROT_WRITE,
         MAP_SHARED, pdata->fd, 0);

   if (pdata->fb_mem == MAP_FAILED)
   {
      pdata->fb_mem = NULL;
      FUNC0("[video_omap]: framebuffer mmap failed\n");

      return -1;
   }

   return 0;
}