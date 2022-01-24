#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  omapfb_state_t ;
struct TYPE_5__ {TYPE_4__* saved_state; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ omapfb_data_t ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;
struct TYPE_7__ {TYPE_3__ mi; int /*<<< orphan*/ * mem; TYPE_3__ si; TYPE_3__ pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBIOGET_VSCREENINFO ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  OMAPFB_QUERY_MEM ; 
 int /*<<< orphan*/  OMAPFB_QUERY_PLANE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(omapfb_data_t *pdata)
{
   void* mem = NULL;

   FUNC7(pdata->saved_state == NULL);

   pdata->saved_state = FUNC1(1, sizeof(omapfb_state_t));
   if (!pdata->saved_state) return -1;

   if (FUNC2(pdata->fd, OMAPFB_QUERY_PLANE, &pdata->saved_state->pi) != 0)
   {
      FUNC0("[video_omap]: backup layer (plane) failed\n");
      return -1;
   }

   if (FUNC2(pdata->fd, OMAPFB_QUERY_MEM, &pdata->saved_state->mi) != 0)
   {
      FUNC0("[video_omap]: backup layer (mem) failed\n");
      return -1;
   }

   if (FUNC2(pdata->fd, FBIOGET_VSCREENINFO, &pdata->saved_state->si) != 0)
   {
      FUNC0("[video_omap]: backup layer (screeninfo) failed\n");
      return -1;
   }

   pdata->saved_state->mem = FUNC3(pdata->saved_state->mi.size);
   mem = FUNC5(NULL, pdata->saved_state->mi.size, PROT_WRITE|PROT_READ,
         MAP_SHARED, pdata->fd, 0);
   if (pdata->saved_state->mem == NULL || mem == MAP_FAILED)
   {
      FUNC0("[video_omap]: backup layer (mem backup) failed\n");
      FUNC6(mem, pdata->saved_state->mi.size);
      return -1;
   }
   FUNC4(pdata->saved_state->mem, mem, pdata->saved_state->mi.size);
   FUNC6(mem, pdata->saved_state->mi.size);

   return 0;
}