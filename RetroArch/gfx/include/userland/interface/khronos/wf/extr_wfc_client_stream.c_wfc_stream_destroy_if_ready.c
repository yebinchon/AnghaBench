
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ num_of_sources_or_masks; scalar_t__ registrations; int to_be_deleted; int handle; scalar_t__ used_for_off_screen; } ;
typedef TYPE_1__ WFC_STREAM_T ;
typedef int WFCNativeStreamType ;


 int STREAM_UNLOCK (TYPE_1__*) ;
 int VCOS_FUNCTION ;
 int vcos_log_error (char*,int ) ;
 int vcos_log_info (char*,int ,int ) ;
 int vcos_log_trace (char*,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int vcos_process_id_current () ;
 int wfc_server_stream_destroy (int ,int ,int ) ;
 int wfc_stream_destroy_stream_ptr (int ) ;

__attribute__((used)) static void wfc_stream_destroy_if_ready(WFC_STREAM_T *stream_ptr)
{
   WFCNativeStreamType stream;
   uint64_t pid = vcos_process_id_current();
   uint32_t pid_lo = (uint32_t)pid;
   uint32_t pid_hi = (uint32_t)(pid >> 32);

   if (stream_ptr == ((void*)0))
   {
      vcos_log_error("%s: stream_ptr is NULL", VCOS_FUNCTION);
      return;
   }

   if(stream_ptr->num_of_sources_or_masks > 0
      || stream_ptr->used_for_off_screen
      || stream_ptr->registrations > 0)
   {
      vcos_log_trace("%s: stream: %X not ready: reg:%u srcs:%u o/s:%d", VCOS_FUNCTION,
            stream_ptr->handle, stream_ptr->registrations,
            stream_ptr->num_of_sources_or_masks, stream_ptr->used_for_off_screen);
      STREAM_UNLOCK(stream_ptr);
      return;
   }

   stream = stream_ptr->handle;

   vcos_log_info("%s: stream: %X to be destroyed", VCOS_FUNCTION, stream);


   stream_ptr->to_be_deleted = 1;


   wfc_server_stream_destroy(stream, pid_lo, pid_hi);

   STREAM_UNLOCK(stream_ptr);

   wfc_stream_destroy_stream_ptr(stream);
}
