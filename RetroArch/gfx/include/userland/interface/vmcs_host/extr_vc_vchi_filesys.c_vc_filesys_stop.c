
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ bulk_buffer; int filesys_lock; int response_event; int filesys_msg_avail; int filesys_thread; scalar_t__ initialised; int open_handle; } ;


 scalar_t__ lock_obtain () ;
 TYPE_1__ vc_filesys_client ;
 scalar_t__ vchi_service_close (int ) ;
 int vcos_assert (int) ;
 int vcos_event_delete (int *) ;
 int vcos_event_signal (int *) ;
 int vcos_free (scalar_t__) ;
 int vcos_mutex_delete (int *) ;
 int vcos_thread_join (int *,void**) ;

void vc_filesys_stop ()
{
   int32_t result;
   void *dummy;

   if(lock_obtain() != 0)
      return;

   result = vchi_service_close(vc_filesys_client.open_handle);
   vcos_assert(result == 0);

   vc_filesys_client.initialised = 0;

   vcos_event_signal(&vc_filesys_client.filesys_msg_avail);
   vcos_thread_join(&vc_filesys_client.filesys_thread, &dummy);

   vcos_event_delete(&vc_filesys_client.filesys_msg_avail);
   vcos_event_delete(&vc_filesys_client.response_event);
   vcos_mutex_delete(&vc_filesys_client.filesys_lock);

   if(vc_filesys_client.bulk_buffer)
      vcos_free(vc_filesys_client.bulk_buffer);
}
