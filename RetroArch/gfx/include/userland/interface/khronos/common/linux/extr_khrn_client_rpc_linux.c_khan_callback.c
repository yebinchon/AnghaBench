
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
typedef int VCHIQ_REASON_T ;
struct TYPE_4__ {int size; scalar_t__ data; } ;
typedef TYPE_1__ VCHIQ_HEADER_T ;
typedef int PLATFORM_SEMAPHORE_T ;


 int ASYNC_COMMAND_DESTROY ;


 int KHR_SUCCESS ;
 int UNREACHABLE () ;







 int VCHIQ_SUCCESS ;
 int khronos_platform_semaphore_acquire (int *) ;
 int khronos_platform_semaphore_create (int *,int*,int) ;
 int khronos_platform_semaphore_destroy (int *) ;
 int khronos_platform_semaphore_release (int *) ;
 int printf (char*,int,int) ;
 int vchiq_get_client_id (int ) ;
 int vchiq_release_message (int ,TYPE_1__*) ;
 int vcos_assert (int) ;
 int vcos_assert_msg (int ,char*) ;

VCHIQ_STATUS_T khan_callback(VCHIQ_REASON_T reason, VCHIQ_HEADER_T *header,
                  VCHIQ_SERVICE_HANDLE_T handle, void *bulk_userdata)
{
   switch (reason) {
   case 130:
   {
      int32_t *data = (int32_t *) header->data;
      int32_t command = data[0];
      int32_t *msg = &data[1];
      vcos_assert(header->size == 16);




      uint64_t pid = vchiq_get_client_id(handle);
      if((msg[0] != (uint32_t) pid) || (msg[1] != (uint32_t) (pid >> 32)))
      {
         printf("khan_callback: message for wrong process; pid = %X, msg pid = %X\n",
            (uint32_t) pid, msg[0]);
         return VCHIQ_SUCCESS;
      }

      if (command == ASYNC_COMMAND_DESTROY)
      {

      }
      else
      {
         PLATFORM_SEMAPHORE_T sem;
         if (khronos_platform_semaphore_create(&sem, msg, 1) == KHR_SUCCESS)
         {
            switch (command) {
            case 135:
               khronos_platform_semaphore_acquire(&sem);
               break;
            case 136:
               khronos_platform_semaphore_release(&sem);
               break;
            default:
               vcos_assert_msg(0, "khan_callback: unknown message type");
               break;
            }
            khronos_platform_semaphore_destroy(&sem);
         }
      }
      vchiq_release_message(handle, header);
      break;
   }
   case 131:
   case 133:
      UNREACHABLE();
      break;
   case 128:
      vcos_assert_msg(0, "khan_callback: VCHIQ_SERVICE_OPENED");
      break;
   case 129:
      vcos_assert_msg(0, "khan_callback: VCHIQ_SERVICE_CLOSED");
      break;
   case 132:
   case 134:
   default:
      UNREACHABLE();
   }

   return VCHIQ_SUCCESS;
}
