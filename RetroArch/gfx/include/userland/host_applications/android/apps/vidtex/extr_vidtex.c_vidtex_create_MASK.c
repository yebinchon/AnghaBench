#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int quit; int /*<<< orphan*/  sem_decoded; int /*<<< orphan*/  sem_drawn; int /*<<< orphan*/  mutex; scalar_t__ stop_reason; } ;
typedef  TYPE_1__ VIDTEX_T ;
typedef  scalar_t__ VCOS_STATUS_T ;
typedef  int /*<<< orphan*/  EGLNativeWindowType ;

/* Variables and functions */
 scalar_t__ VCOS_SUCCESS ; 
 TYPE_1__* FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VIDTEX_T *FUNC8(EGLNativeWindowType win)
{
   VIDTEX_T *vt;
   VCOS_STATUS_T st;

   vt = FUNC0(1, sizeof(*vt), "vidtex");
   if (vt == NULL)
   {
      FUNC2("Memory allocation failure");
      return NULL;
   }

   st = FUNC5(&vt->sem_decoded, "vidtex-dec", 0);
   if (st != VCOS_SUCCESS)
   {
      FUNC2("Error creating semaphore");
      goto error_ctx;
   }

   st = FUNC5(&vt->sem_drawn, "vidtex-drw", 0);
   if (st != VCOS_SUCCESS)
   {
      FUNC2("Error creating semaphore");
      goto error_sem1;
   }

   st = FUNC3(&vt->mutex, "vidtex");
   if (st != VCOS_SUCCESS)
   {
      FUNC2("Error creating semaphore");
      goto error_sem2;
   }

   if (FUNC7(vt, win) != 0)
   {
      FUNC2("Error initialising EGL");
      goto error_mutex;
   }

   vt->quit = false;
   vt->stop_reason = 0;

   return vt;

error_mutex:
   FUNC4(&vt->mutex);
error_sem2:
   FUNC6(&vt->sem_drawn);
error_sem1:
   FUNC6(&vt->sem_decoded);
error_ctx:
   FUNC1(vt);
   return NULL;
}