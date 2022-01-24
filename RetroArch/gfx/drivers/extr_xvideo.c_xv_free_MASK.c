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
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  shmid; int /*<<< orphan*/  shmaddr; } ;
struct TYPE_6__ {scalar_t__ font; TYPE_1__* font_driver; struct TYPE_6__* vtable; struct TYPE_6__* utable; struct TYPE_6__* ytable; int /*<<< orphan*/  image; TYPE_4__ shminfo; } ;
typedef  TYPE_2__ xv_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* free ) (scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_RMID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  g_x11_dpy ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(void *data)
{
   xv_t *xv = (xv_t*)data;

   if (!xv)
      return;

   FUNC8();

   FUNC2(g_x11_dpy, &xv->shminfo);
   FUNC5(xv->shminfo.shmaddr);
   FUNC4(xv->shminfo.shmid, IPC_RMID, NULL);
   FUNC1(xv->image);

   FUNC9(true);
   FUNC7();

   FUNC0(g_x11_dpy);

   FUNC3(xv->ytable);
   FUNC3(xv->utable);
   FUNC3(xv->vtable);

   if (xv->font)
      xv->font_driver->free(xv->font);

   FUNC3(xv);
}