
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int info ;
struct TYPE_7__ {int info; int registrations; } ;
typedef TYPE_1__ WFC_STREAM_T ;
struct TYPE_8__ {int size; } ;
typedef TYPE_2__ WFC_STREAM_INFO_T ;
typedef int WFCNativeStreamType ;


 int STREAM_UNLOCK (TYPE_1__*) ;
 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int memcpy (int *,TYPE_2__*,int) ;
 int vcos_log_error (char*,int ,scalar_t__) ;
 int vcos_process_id_current () ;
 scalar_t__ wfc_server_connect () ;
 scalar_t__ wfc_server_stream_get_info (int ,TYPE_2__*) ;
 int wfc_server_stream_register (int ,scalar_t__,scalar_t__) ;
 TYPE_1__* wfc_stream_create_stream_ptr (int ,int) ;

void wfc_stream_register(WFCNativeStreamType stream) {
   uint64_t pid = vcos_process_id_current();
   uint32_t pid_lo = (uint32_t)pid;
   uint32_t pid_hi = (uint32_t)(pid >> 32);

   if (wfc_server_connect() == VCOS_SUCCESS)
   {
      WFC_STREAM_INFO_T info;
      uint32_t status;

      info.size = sizeof(info);
      status = wfc_server_stream_get_info(stream, &info);

      if (status == VCOS_SUCCESS)
      {
         WFC_STREAM_T *stream_ptr = wfc_stream_create_stream_ptr(stream, 1);

         if (stream_ptr)
         {
            stream_ptr->registrations++;
            memcpy(&stream_ptr->info, &info, info.size);
            STREAM_UNLOCK(stream_ptr);
         }

         wfc_server_stream_register(stream, pid_lo, pid_hi);
      }
      else
      {
         vcos_log_error("%s: get stream info failed: %u", VCOS_FUNCTION, status);
      }
   }
}
