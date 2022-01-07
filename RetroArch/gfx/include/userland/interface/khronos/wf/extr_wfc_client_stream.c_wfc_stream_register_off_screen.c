
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int used_for_off_screen; } ;
typedef TYPE_1__ WFC_STREAM_T ;
typedef scalar_t__ WFCNativeStreamType ;


 int STREAM_UNLOCK (TYPE_1__*) ;
 int VCOS_FUNCTION ;
 scalar_t__ WFC_INVALID_HANDLE ;
 int vcos_log_trace (char*,int ,scalar_t__) ;
 int wfc_stream_destroy_if_ready (TYPE_1__*) ;
 TYPE_1__* wfc_stream_find_stream_ptr (scalar_t__) ;

void wfc_stream_register_off_screen(WFCNativeStreamType stream, bool used_for_off_screen)


{
   if(stream == WFC_INVALID_HANDLE)
      {return;}

   vcos_log_trace("%s: stream 0x%x", VCOS_FUNCTION, stream);

   WFC_STREAM_T *stream_ptr = wfc_stream_find_stream_ptr(stream);
   if (!stream_ptr)
      return;

   stream_ptr->used_for_off_screen = used_for_off_screen;

   if (used_for_off_screen)
      STREAM_UNLOCK(stream_ptr);
   else
   {

      wfc_stream_destroy_if_ready(stream_ptr);
   }
}
