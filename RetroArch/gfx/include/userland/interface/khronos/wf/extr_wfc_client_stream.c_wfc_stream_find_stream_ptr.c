
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int to_be_deleted; } ;
typedef TYPE_1__ WFC_STREAM_T ;
typedef int WFCNativeStreamType ;


 int GLOBAL_UNLOCK () ;
 int STREAM_LOCK (TYPE_1__*) ;
 TYPE_1__* wfc_stream_global_lock_and_find_stream_ptr (int ) ;

__attribute__((used)) static WFC_STREAM_T *wfc_stream_find_stream_ptr(WFCNativeStreamType stream)
{
   WFC_STREAM_T *stream_ptr = wfc_stream_global_lock_and_find_stream_ptr(stream);

   if (stream_ptr && !stream_ptr->to_be_deleted)
      STREAM_LOCK(stream_ptr);

   GLOBAL_UNLOCK();

   return stream_ptr;
}
