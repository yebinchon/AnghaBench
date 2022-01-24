#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PLATFORM_TLS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  client_thread_detach ; 
 int /*<<< orphan*/  client_tls ; 
 int process_attached ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

void *FUNC6(PLATFORM_TLS_T tls)
{
   void *ret;

   if (!process_attached)
      /* TODO: this isn't thread safe */
   {
      FUNC3("Attaching process");
      FUNC0();
      process_attached = true;
      tls = client_tls;

      FUNC2();
   }

   ret = FUNC5(tls);
   if (!ret)
   {
     /* The problem here is that on VCFW, the first notification we get that a thread
       * exists at all is when it calls an arbitrary EGL function. We need to detect this
       * case and initiliase the per-thread state.
       *
       * On Windows this gets done in DllMain.
       */
      FUNC1();
      FUNC4(client_thread_detach, NULL);
      ret = FUNC5(tls);
   }
   return ret;
}