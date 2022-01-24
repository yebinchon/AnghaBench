#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int fd; void* fb_mem; TYPE_4__* current_state; TYPE_4__* saved_state; scalar_t__ sync; } ;
typedef  TYPE_2__ omapfb_data_t ;
struct TYPE_6__ {int enabled; int /*<<< orphan*/  size; } ;
struct TYPE_8__ {struct TYPE_8__* mem; TYPE_1__ si; TYPE_1__ mi; TYPE_1__ pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBIOPUT_VSCREENINFO ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  OMAPFB_SETUP_MEM ; 
 int /*<<< orphan*/  OMAPFB_SETUP_PLANE ; 
 int /*<<< orphan*/  OMAPFB_WAITFORGO ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 

void FUNC6(omapfb_data_t *pdata)
{
   if (pdata->sync)
      FUNC2(pdata->fd, OMAPFB_WAITFORGO);

   /* unmap the framebuffer memory */
   if (pdata->fb_mem)
   {
      FUNC5(pdata->fb_mem, pdata->current_state->mi.size);
      pdata->fb_mem = NULL;
   }

   /* restore the framebuffer state (OMAP plane state, screen info) */
   if (pdata->saved_state)
   {
      void *mem;
      int enabled = pdata->saved_state->pi.enabled;

      /* be sure to disable while setting up */
      pdata->saved_state->pi.enabled = 0;
      FUNC2(pdata->fd, OMAPFB_SETUP_PLANE, &pdata->saved_state->pi);
      FUNC2(pdata->fd, OMAPFB_SETUP_MEM, &pdata->saved_state->mi);

      if (enabled)
      {
         pdata->saved_state->pi.enabled = enabled;
         FUNC2(pdata->fd, OMAPFB_SETUP_PLANE, &pdata->saved_state->pi);
      }

      /* restore framebuffer content */
      mem = FUNC4(0, pdata->saved_state->mi.size, PROT_WRITE|PROT_READ,
            MAP_SHARED, pdata->fd, 0);

      if (mem != MAP_FAILED)
      {
         FUNC3(mem, pdata->saved_state->mem, pdata->saved_state->mi.size);
         FUNC5(mem, pdata->saved_state->mi.size);
      }

      /* restore screen info */
      FUNC2(pdata->fd, FBIOPUT_VSCREENINFO, &pdata->saved_state->si);

      FUNC1(pdata->saved_state->mem);
      pdata->saved_state->mem = NULL;

      FUNC1(pdata->saved_state);
      pdata->saved_state = NULL;
   }

   FUNC1(pdata->current_state);
   pdata->current_state = NULL;

   FUNC0(pdata->fd);
   pdata->fd = -1;
}