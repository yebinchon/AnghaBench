
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ initialised; int open_handle; int vc_msg; int filesys_msg_avail; } ;


 int VCHI_FLAGS_NONE ;
 scalar_t__ VCOS_SUCCESS ;
 TYPE_1__ vc_filesys_client ;
 scalar_t__ vc_fs_message_handler (int *,int ) ;
 int vc_hostfs_init () ;
 scalar_t__ vchi_msg_dequeue (int ,int *,int,int *,int ) ;
 int vchi_service_release (int ) ;
 int vchi_service_use (int ) ;
 scalar_t__ vcos_event_wait (int *) ;

__attribute__((used)) static void *filesys_task_func(void *arg)
{
   int32_t success;
   uint32_t msg_len;

   (void)arg;

   vc_hostfs_init();

   while(1) {

      if (vcos_event_wait(&vc_filesys_client.filesys_msg_avail) != VCOS_SUCCESS || vc_filesys_client.initialised == 0)
         break;

      vchi_service_use(vc_filesys_client.open_handle);

      while (1) {
         success = vchi_msg_dequeue(vc_filesys_client.open_handle, &vc_filesys_client.vc_msg,
                                    sizeof(vc_filesys_client.vc_msg), &msg_len, VCHI_FLAGS_NONE);
         if (!success)
            break;


         success = (int32_t) vc_fs_message_handler(&vc_filesys_client.vc_msg, msg_len);
         (void)success;
      }
      vchi_service_release(vc_filesys_client.open_handle);
   }

   return 0;
}
