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
typedef  scalar_t__ KHR_STATUS_T ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 scalar_t__ KHR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  client_tls ; 
 int /*<<< orphan*/  client_tls_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC8()
{
   CLIENT_THREAD_STATE_T *state = (CLIENT_THREAD_STATE_T *)FUNC3(sizeof(CLIENT_THREAD_STATE_T), "CLIENT_THREAD_STATE_T");

   if (!state)
      return false;

   FUNC1(state);

   FUNC5(client_tls, state);

#ifdef CLIENT_THREAD_IS_PROCESS
	{  //add mutex into thread's tls
		KHR_STATUS_T status;
		PLATFORM_MUTEX_T *local_mutex = (PLATFORM_MUTEX_T*)vcos_tls_get(client_tls_mutex);

		if (!local_mutex)
		{
			local_mutex = (PLATFORM_MUTEX_T*)khrn_platform_malloc(sizeof(PLATFORM_MUTEX_T),"thread mutex");
			if (!local_mutex)
				return false;

			status = platform_mutex_create(local_mutex);
			if (status != KHR_SUCCESS) {
				khrn_platform_free(local_mutex);
				return false;
			}

			vcos_tls_set(client_tls_mutex,local_mutex);
		}
	}
#endif

#ifndef RPC_LIBRARY    //TODO
   FUNC0(state);
#endif
   return true;
}