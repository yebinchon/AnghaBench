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
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {int num_connections; scalar_t__ response_length; scalar_t__ response_buffer; int /*<<< orphan*/ * open_handle; int /*<<< orphan*/  message_available_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCHI_FLAGS_NONE ; 
 scalar_t__ VCOS_SUCCESS ; 
 int FUNC0 (int) ; 
 TYPE_1__ gencmd_client ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int) ; 

int FUNC9 (char *response, int maxlen) {
   int i = 0;
   int success = -1;
   int ret_code = 0;
   int32_t sem_ok = 0;

   if(FUNC1() == 0)
   {
      //Note this will ALWAYS reset response buffer and overwrite any partially read responses
      FUNC5();
      do {
         //TODO : we need to deal with messages coming through on more than one connections properly
         //At the moment it will always try to read the first connection if there is something there
         for(i = 0; i < gencmd_client.num_connections; i++) {
            //Check if there is something in the queue, if so return immediately
            //otherwise wait for the event and read again
            success = (int) FUNC6( gencmd_client.open_handle[i], gencmd_client.response_buffer,
                                              sizeof(gencmd_client.response_buffer), &gencmd_client.response_length, VCHI_FLAGS_NONE);
            if(success == 0) {
               ret_code = FUNC0( *(int *)gencmd_client.response_buffer );
               break;
            } else {
               gencmd_client.response_length = 0;
            }
         }
      } while(!gencmd_client.response_length && FUNC7(&gencmd_client.message_available_event) == VCOS_SUCCESS);

      if(gencmd_client.response_length && sem_ok == 0) {
         gencmd_client.response_length -= sizeof(int); //first word is error code
         FUNC3(response, gencmd_client.response_buffer+sizeof(int), (size_t) FUNC8((int)gencmd_client.response_length, (int)maxlen));
      }

      FUNC4();
      FUNC2();
   }

   // If we read anything, return the VideoCore code. Error codes < 0 mean we failed to
   // read anything...
   //How do we let the caller know the response code of gencmd?
   //return ret_code;

   return success;
}