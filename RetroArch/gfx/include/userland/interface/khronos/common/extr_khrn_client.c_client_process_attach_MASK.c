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
typedef  scalar_t__ KHR_STATUS_T ;

/* Variables and functions */
 scalar_t__ KHR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  client_mutex ; 
 int /*<<< orphan*/  client_tls ; 
 int /*<<< orphan*/  client_tls_mutex ; 
 int /*<<< orphan*/  client_tls_process ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5()
{
   KHR_STATUS_T status;
   status = FUNC3(&client_tls);
   if (status != KHR_SUCCESS) {
      return false;
   }

#ifdef CLIENT_THREAD_IS_PROCESS
   status = platform_tls_create(&client_tls_process);
   if (status != KHR_SUCCESS) {
      return false;
   }

   status = platform_tls_create(&client_tls_mutex);
   if (status != KHR_SUCCESS) {
      return false;
   }
#endif

   status = FUNC1(&client_mutex);

   if (status != KHR_SUCCESS) {
      FUNC4(client_tls);
      return false;
   }
   if (!FUNC0()) {
      FUNC2(&client_mutex);
      FUNC4(client_tls);
      return false;
   }
   return true;
}