
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ registrations; } ;
typedef TYPE_1__ WFC_STREAM_T ;
typedef int WFCNativeStreamType ;


 int VCOS_FUNCTION ;
 int vcos_log_error (char*,int ,int ) ;
 int vcos_log_trace (char*,int ,int ) ;
 int vcos_process_id_current () ;
 scalar_t__ vcos_verify (int ) ;
 int wfc_server_disconnect () ;
 int wfc_server_stream_unregister (int ,int ,int ) ;
 int wfc_stream_destroy_if_ready (TYPE_1__*) ;
 TYPE_1__* wfc_stream_find_stream_ptr (int ) ;

void wfc_stream_unregister(WFCNativeStreamType stream) {
   uint64_t pid = vcos_process_id_current();
   uint32_t pid_lo = (uint32_t)pid;
   uint32_t pid_hi = (uint32_t)(pid >> 32);
   WFC_STREAM_T *stream_ptr = wfc_stream_find_stream_ptr(stream);

   if (vcos_verify(stream_ptr != ((void*)0)))
   {
      wfc_server_stream_unregister(stream, pid_lo, pid_hi);

      if (stream_ptr->registrations > 0)
      {
         stream_ptr->registrations--;
         vcos_log_trace("%s: stream %X", VCOS_FUNCTION, stream);
      }
      else
      {
         vcos_log_error("%s: stream %X already fully unregistered", VCOS_FUNCTION, stream);
      }

      wfc_stream_destroy_if_ready(stream_ptr);
   }

   wfc_server_disconnect();
}
