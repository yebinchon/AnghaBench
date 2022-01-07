
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int used_for_off_screen; } ;
typedef TYPE_1__ WFC_STREAM_T ;
typedef int WFCNativeStreamType ;


 int STREAM_UNLOCK (TYPE_1__*) ;
 int VCOS_FUNCTION ;
 int vcos_log_trace (char*,int ,int ) ;
 TYPE_1__* wfc_stream_find_stream_ptr (int ) ;

bool wfc_stream_used_for_off_screen(WFCNativeStreamType stream)


{
   bool used_for_off_screen;

   vcos_log_trace("%s: stream 0x%x", VCOS_FUNCTION, stream);

   WFC_STREAM_T *stream_ptr = wfc_stream_find_stream_ptr(stream);
   if (!stream_ptr)
      return 0;

   used_for_off_screen = stream_ptr->used_for_off_screen;

   STREAM_UNLOCK(stream_ptr);

   return used_for_off_screen;

}
