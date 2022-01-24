#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_10__ {int /*<<< orphan*/  disp; } ;
struct TYPE_8__ {int /*<<< orphan*/  pixmap; } ;
struct TYPE_9__ {scalar_t__ type; int /*<<< orphan*/  magic; int /*<<< orphan*/  surface; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  GX_CLIENT_STATE_T ;
typedef  TYPE_2__* GRAPHICS_RESOURCE_HANDLE ;
typedef  int EGLBoolean ;

/* Variables and functions */
 scalar_t__ GX_PBUFFER ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ GX_WINDOW ; 
 int /*<<< orphan*/  RES_MAGIC ; 
 TYPE_7__ display ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 

int32_t FUNC10( GRAPHICS_RESOURCE_HANDLE res )
{
   EGLBoolean result;

   if (!res)
   {
      // let it slide - mimics old behaviour
      return 0;
   }
   FUNC0("delete resource @%p", res);

   FUNC6(res->magic == RES_MAGIC);

   if (res->type == GX_PBUFFER)
   {
      GX_CLIENT_STATE_T save;
      FUNC5(&save, res);
      FUNC8(res->u.pixmap);
      FUNC6(FUNC9() == 0);
      FUNC4(&save);
   }

   FUNC0("graphics_delete_resource: calling eglDestroySurface...");
   result = FUNC1(display.disp, res->surface);
   FUNC6(result);

   FUNC0("graphics_delete_resource: calling eglWaitClient...");
   FUNC2(); // wait for EGL to finish sorting out its surfaces

   if (res->type == GX_WINDOW)
   {
      FUNC0("graphics_delete_resource: calling gx_priv_destroy_native_window...");
      FUNC3(res);
   }

   res->magic = ~RES_MAGIC;
   FUNC7(res);
   FUNC0("graphics_delete_resource: done");

   return 0;
}