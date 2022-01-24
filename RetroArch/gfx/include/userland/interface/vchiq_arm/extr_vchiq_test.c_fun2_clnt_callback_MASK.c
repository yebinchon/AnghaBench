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
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
typedef  void* VCHIQ_SERVICE_HANDLE_T ;
typedef  int VCHIQ_REASON_T ;
typedef  void VCHIQ_HEADER_T ;

/* Variables and functions */
#define  VCHIQ_BULK_RECEIVE_DONE 131 
#define  VCHIQ_BULK_TRANSMIT_DONE 130 
#define  VCHIQ_SERVICE_CLOSED 129 
#define  VCHIQ_SERVICE_OPENED 128 
 int /*<<< orphan*/  VCHIQ_SUCCESS ; 
 int fun2_error ; 
 int /*<<< orphan*/  func_test_sync ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static VCHIQ_STATUS_T
FUNC2(VCHIQ_REASON_T reason, VCHIQ_HEADER_T *header,
   VCHIQ_SERVICE_HANDLE_T service, void *bulk_userdata)
{
   FUNC1(header);
   FUNC1(service);
   FUNC1(bulk_userdata);

   switch (reason)
   {
   case VCHIQ_SERVICE_OPENED:
   case VCHIQ_SERVICE_CLOSED:
   case VCHIQ_BULK_TRANSMIT_DONE:
      break;
   case VCHIQ_BULK_RECEIVE_DONE:
      FUNC0(&func_test_sync);
      break;
   default:
      fun2_error = 1;
      FUNC0(&func_test_sync);
      break;
   }

   return VCHIQ_SUCCESS;
}