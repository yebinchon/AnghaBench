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
typedef  int /*<<< orphan*/ ** uint32_t ;
typedef  int int32_t ;
typedef  scalar_t__ VCHI_INSTANCE_T ;
typedef  int /*<<< orphan*/  VCHI_CONNECTION_T ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
typedef  int /*<<< orphan*/  VCHIQ_INSTANCE_T ;

/* Variables and functions */
 scalar_t__ VCHIQ_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ** const) ; 

int32_t
FUNC2( VCHI_CONNECTION_T **connections,
   const uint32_t num_connections,
   VCHI_INSTANCE_T instance_handle )
{
   VCHIQ_STATUS_T status;

   FUNC1(connections);
   FUNC1(num_connections);

   status = FUNC0((VCHIQ_INSTANCE_T)instance_handle);

   return (status == VCHIQ_SUCCESS) ? 0 : -1;
}