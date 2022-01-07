
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef TYPE_2__ WFC_STREAM_T ;
typedef int WFCNativeStreamType ;
typedef scalar_t__ VCOS_STATUS_T ;
typedef int VCOS_SEMAPHORE_T ;


 int STREAM_UNLOCK (TYPE_2__*) ;
 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_STREAM_FLAGS_BUF_AVAIL ;
 int vcos_assert (int) ;
 int vcos_log_trace (char*,int ,int ) ;
 scalar_t__ vcos_semaphore_create (int *,char*,int ) ;
 int vcos_semaphore_delete (int *) ;
 int vcos_semaphore_wait (int *) ;
 int vcos_unused (scalar_t__) ;
 scalar_t__ vcos_verify (int) ;
 int wfc_client_stream_post_sem ;
 int wfc_server_release_keep_alive () ;
 int wfc_server_stream_on_image_available (int ,int ,int *) ;
 int wfc_server_use_keep_alive () ;
 TYPE_2__* wfc_stream_find_stream_ptr (int ) ;

void wfc_stream_await_buffer(WFCNativeStreamType stream)

{
   vcos_log_trace("%s: stream 0x%x", VCOS_FUNCTION, stream);

   WFC_STREAM_T *stream_ptr = wfc_stream_find_stream_ptr(stream);
   if (!stream_ptr)
      return;

   if(vcos_verify(stream_ptr->info.flags & WFC_STREAM_FLAGS_BUF_AVAIL))
   {
      VCOS_SEMAPHORE_T image_available_sem;
      VCOS_STATUS_T status;


      wfc_server_use_keep_alive();

      status = vcos_semaphore_create(&image_available_sem, "WFC image available", 0);
      vcos_assert(status == VCOS_SUCCESS);
      vcos_unused(status);

      wfc_server_stream_on_image_available(stream, wfc_client_stream_post_sem, &image_available_sem);

      vcos_log_trace("%s: pre async sem wait: stream: %X", VCOS_FUNCTION, stream);
      vcos_semaphore_wait(&image_available_sem);
      vcos_log_trace("%s: post async sem wait: stream: %X", VCOS_FUNCTION, stream);

      vcos_semaphore_delete(&image_available_sem);
      wfc_server_release_keep_alive();
   }

   STREAM_UNLOCK(stream_ptr);

}
