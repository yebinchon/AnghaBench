#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ context_current_count; int connected; scalar_t__ inited; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* khrn_misc_try_unload_impl ) () ;} ;
typedef  TYPE_1__ KHRONOS_FUNC_TABLE_T ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;
typedef  TYPE_2__ CLIENT_PROCESS_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  KHRNMISCTRYUNLOAD_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  khrn_misc_try_unload_impl ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(CLIENT_PROCESS_STATE_T *process)
{
   if (/* some context is current */
      (process->context_current_count != 0) ||
      /* egl is initialised */
      process->inited) {
      return;
   }

   /*
      Prompt the server to unload Khronos VLL if it can,
      and wait until it is done
   */
#ifdef RPC_LIBRARY   //TODO: not thread safe
   if (process->connected) {
      const KHRONOS_FUNC_TABLE_T *func_table;
      func_table = khronos_server_lock_func_table(client_library_get_connection());
      if (func_table != NULL)
      {
         func_table->khrn_misc_try_unload_impl();
         khronos_server_disconnect();
      }
      khronos_server_unlock_func_table();

      process->connected = false;
   }
#else
   {
      CLIENT_THREAD_STATE_T *thread = FUNC0();
      FUNC2(FUNC1(khrn_misc_try_unload_impl, thread, KHRNMISCTRYUNLOAD_ID)); // return unimportant - read is just to cause blocking
   }
#endif
}