
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ registrations; } ;
typedef TYPE_1__ WFC_STREAM_T ;
typedef int WFCNativeStreamType ;


 int VCOS_FUNCTION ;
 int vcos_log_error (char*,int ,int ) ;
 int vcos_log_info (char*,int ,int ) ;
 int vcos_log_trace (char*,int ,int ) ;
 int vcos_log_warn (char*,int ,int ) ;
 int wfc_stream_destroy_if_ready (TYPE_1__*) ;
 TYPE_1__* wfc_stream_find_stream_ptr (int ) ;

void wfc_stream_destroy(WFCNativeStreamType stream)


{
   vcos_log_info("%s: stream: %X", VCOS_FUNCTION, stream);

   WFC_STREAM_T *stream_ptr = wfc_stream_find_stream_ptr(stream);

   if (stream_ptr)
   {



      if (stream_ptr->registrations> 0)
      {
         stream_ptr->registrations--;
         vcos_log_trace("%s: stream: %X ready to destroy?", VCOS_FUNCTION, stream);
      }
      else
      {
         vcos_log_error("%s: stream: %X destroyed when unregistered", VCOS_FUNCTION, stream);
      }


      wfc_stream_destroy_if_ready(stream_ptr);
   }
   else
   {
      vcos_log_warn("%s: stream %X doesn't exist", VCOS_FUNCTION, stream);
   }

}
