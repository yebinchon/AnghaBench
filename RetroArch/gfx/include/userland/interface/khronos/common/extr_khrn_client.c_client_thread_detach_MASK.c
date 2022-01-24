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
typedef  int /*<<< orphan*/  PLATFORM_MUTEX_T ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;
typedef  int /*<<< orphan*/  CLIENT_PROCESS_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  client_tls ; 
 int /*<<< orphan*/  client_tls_mutex ; 
 int /*<<< orphan*/  client_tls_process ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(void *dummy)
{
   CLIENT_THREAD_STATE_T *state = FUNC1();
   FUNC2(dummy);

   FUNC7(client_tls);
   FUNC3(state);

   FUNC4(state);
   FUNC5();

#ifdef CLIENT_THREAD_IS_PROCESS
	{
		CLIENT_PROCESS_STATE_T *process = CLIENT_GET_PROCESS_STATE();
   	khrn_platform_free(process);
		platform_tls_remove(client_tls_process);
	}

	{
		PLATFORM_MUTEX_T *local_mutex = (PLATFORM_MUTEX_T*)vcos_tls_get(client_tls_mutex);
		vcos_assert(local_mutex);

		platform_mutex_destroy(local_mutex);

		khrn_platform_free(local_mutex);
		platform_tls_remove(client_tls_mutex);
	}
#endif
}