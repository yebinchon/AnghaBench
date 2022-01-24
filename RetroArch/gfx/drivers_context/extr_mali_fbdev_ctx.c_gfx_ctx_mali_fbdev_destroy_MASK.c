#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int resize; int /*<<< orphan*/  egl; } ;
typedef  TYPE_1__ mali_ctx_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  VT_ACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void *data)
{
   int fd;
   mali_ctx_data_t *mali = (mali_ctx_data_t*)data;

   if (mali)
   {
#ifdef HAVE_EGL
       egl_destroy(&mali->egl);
#endif

       mali->resize       = false;
       FUNC2(mali);
   }

   /* Clear framebuffer and set cursor on again */
   fd = FUNC4("/dev/tty", O_RDWR);
   FUNC3(fd, VT_ACTIVATE, 5);
   FUNC3(fd, VT_ACTIVATE, 1);
   FUNC0(fd);

   FUNC5("setterm -cursor on");
}