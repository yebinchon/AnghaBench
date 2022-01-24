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
typedef  int /*<<< orphan*/  VCOS_EVENT_T ;
typedef  int VCHI_CALLBACK_REASON_T ;

/* Variables and functions */
#define  VCHI_CALLBACK_BULK_RECEIVED 130 
#define  VCHI_CALLBACK_BULK_SENT 129 
#define  VCHI_CALLBACK_MSG_AVAILABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1( void *callback_param,
                             const VCHI_CALLBACK_REASON_T reason,
                             void *msg_handle )
{
   (void)msg_handle;

   switch( reason ) {

   case VCHI_CALLBACK_MSG_AVAILABLE:
      {
         VCOS_EVENT_T *event = (VCOS_EVENT_T *) callback_param;
         if(event)
            FUNC0(event);
      }
      break;

   case VCHI_CALLBACK_BULK_RECEIVED:
      break;
   case VCHI_CALLBACK_BULK_SENT:
      break;

   default:
      return;
   }
}