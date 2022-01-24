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
struct TYPE_3__ {void* polling_thread_stack; void* polling_thread; } ;
typedef  TYPE_1__ wiiu_hid_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  OSThreadAttributes ;
typedef  void OSThread ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int,char*,void*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OS_THREAD_ATTRIB_AFFINITY_CPU2 ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  wiiu_hid_polling_thread ; 
 int /*<<< orphan*/  wiiu_hid_polling_thread_cleanup ; 

__attribute__((used)) static void FUNC7(wiiu_hid_t *hid)
{
   OSThreadAttributes attributes = OS_THREAD_ATTRIB_AFFINITY_CPU2;
   BOOL result                   = false;
   int32_t stack_size            = 0x8000;
   int32_t priority              = 10;
   OSThread *thread              = FUNC6();
   void *stack                   = FUNC4(16, stack_size);

   FUNC3("[hid]: starting polling thread.\n");

   if (!thread || !stack)
   {
      FUNC3("[hid]: allocation failed, aborting thread start.\n");
      goto error;
   }

   if (!FUNC0(thread,
            wiiu_hid_polling_thread,
            1, (char *)hid,
            stack+stack_size, stack_size,
            priority,
            attributes))
   {
      FUNC3("[hid]: OSCreateThread failed.\n");
      goto error;
   }

   FUNC2(thread, wiiu_hid_polling_thread_cleanup);

   hid->polling_thread       = thread;
   hid->polling_thread_stack = stack;
   FUNC1(thread);
   return;

error:
   if (thread)
      FUNC5(thread);
   if (stack)
      FUNC5(stack);

   return;
}