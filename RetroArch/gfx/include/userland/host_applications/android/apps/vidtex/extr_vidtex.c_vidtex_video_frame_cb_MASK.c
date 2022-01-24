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
struct TYPE_2__ {int /*<<< orphan*/ * video_frame; int /*<<< orphan*/  sem_drawn; int /*<<< orphan*/  sem_decoded; } ;
typedef  TYPE_1__ VIDTEX_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *ctx, void *ob)
{
   if (ob)
   {
      VIDTEX_T *vt = ctx;
      /* coverity[missing_lock] Coverity gets confused by the semaphore locking scheme */
      vt->video_frame = ob;
      FUNC0(&vt->sem_decoded);
      FUNC1(&vt->sem_drawn);
      vt->video_frame = NULL;
   }
}