
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {int num_connections; scalar_t__ response_length; scalar_t__ response_buffer; int * open_handle; int message_available_event; } ;


 int VCHI_FLAGS_NONE ;
 scalar_t__ VCOS_SUCCESS ;
 int VC_VTOH32 (int) ;
 TYPE_1__ gencmd_client ;
 scalar_t__ lock_obtain () ;
 int lock_release () ;
 int memcpy (char*,scalar_t__,size_t) ;
 int release_gencmd_service () ;
 int use_gencmd_service () ;
 scalar_t__ vchi_msg_dequeue (int ,scalar_t__,int,scalar_t__*,int ) ;
 scalar_t__ vcos_event_wait (int *) ;
 scalar_t__ vcos_min (int,int) ;

int vc_gencmd_read_response (char *response, int maxlen) {
   int i = 0;
   int success = -1;
   int ret_code = 0;
   int32_t sem_ok = 0;

   if(lock_obtain() == 0)
   {

      use_gencmd_service();
      do {


         for(i = 0; i < gencmd_client.num_connections; i++) {


            success = (int) vchi_msg_dequeue( gencmd_client.open_handle[i], gencmd_client.response_buffer,
                                              sizeof(gencmd_client.response_buffer), &gencmd_client.response_length, VCHI_FLAGS_NONE);
            if(success == 0) {
               ret_code = VC_VTOH32( *(int *)gencmd_client.response_buffer );
               break;
            } else {
               gencmd_client.response_length = 0;
            }
         }
      } while(!gencmd_client.response_length && vcos_event_wait(&gencmd_client.message_available_event) == VCOS_SUCCESS);

      if(gencmd_client.response_length && sem_ok == 0) {
         gencmd_client.response_length -= sizeof(int);
         memcpy(response, gencmd_client.response_buffer+sizeof(int), (size_t) vcos_min((int)gencmd_client.response_length, (int)maxlen));
      }

      release_gencmd_service();
      lock_release();
   }






   return success;
}
