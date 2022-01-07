
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handle; struct TYPE_4__* next; } ;
typedef TYPE_1__ WFC_STREAM_T ;
typedef scalar_t__ WFCNativeStreamType ;


 int GLOBAL_LOCK () ;
 TYPE_1__* wfc_stream_head ;

__attribute__((used)) static WFC_STREAM_T *wfc_stream_global_lock_and_find_stream_ptr(WFCNativeStreamType stream)
{
   WFC_STREAM_T *stream_ptr;

   GLOBAL_LOCK();

   stream_ptr = wfc_stream_head;
   while (stream_ptr && stream_ptr->handle != stream)
      stream_ptr = stream_ptr->next;

   return stream_ptr;
}
