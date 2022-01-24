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
struct TYPE_2__ {int /*<<< orphan*/ * target; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  RUN_LOOP_COCOA ; 
 int /*<<< orphan*/  RUN_LOOP_POSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btpad_packet_handler ; 
 void* FUNC1 () ; 
 int btstack_loaded ; 
 int btstack_tested ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__) ; 
 TYPE_1__* grabbers ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(void)
{
#ifdef HAVE_DYNAMIC
   unsigned i;
#endif
   void *handle   = NULL;

   if (btstack_tested)
      return btstack_loaded;

   btstack_tested = true;
   btstack_loaded = false;

   handle         = FUNC1();

   if (!handle)
      return false;

#ifdef HAVE_DYNAMIC
   for (i = 0; grabbers[i].name; i ++)
   {
      *grabbers[i].target = dylib_proc(handle, grabbers[i].name);

      if (!*grabbers[i].target)
      {
         dylib_close(handle);
         return false;
      }
   }
#endif

#if defined(HAVE_COCOA) || defined(HAVE_COCOATOUCH) || defined(HAVE_COCOA_METAL)
   run_loop_init_ptr(RUN_LOOP_COCOA);
#else
   FUNC4(RUN_LOOP_POSIX);
#endif
   FUNC0(btpad_packet_handler);

   btstack_loaded = true;

   return true;
}