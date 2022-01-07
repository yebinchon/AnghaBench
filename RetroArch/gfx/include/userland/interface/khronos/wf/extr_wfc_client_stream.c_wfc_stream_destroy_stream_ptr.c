
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int flags; } ;
struct TYPE_11__ {int mutex; int rect_req_thread_data; TYPE_2__ info; TYPE_4__* next; TYPE_1__* prev; scalar_t__ to_be_deleted; } ;
typedef TYPE_3__ WFC_STREAM_T ;
typedef int WFCNativeStreamType ;
struct TYPE_12__ {TYPE_1__* prev; } ;
struct TYPE_9__ {TYPE_4__* next; } ;


 int GLOBAL_UNLOCK () ;
 int STREAM_LOCK (TYPE_3__*) ;
 int STREAM_UNLOCK (TYPE_3__*) ;
 int VCOS_FUNCTION ;
 int WFC_STREAM_FLAGS_REQ_RECT ;
 int vcos_blockpool_free (TYPE_3__*) ;
 int vcos_log_error (char*,int ,int ) ;
 int vcos_log_trace (char*,int ,...) ;
 int vcos_mutex_delete (int *) ;
 int vcos_thread_join (int *,int *) ;
 int wfc_server_disconnect () ;
 TYPE_3__* wfc_stream_global_lock_and_find_stream_ptr (int ) ;
 TYPE_4__* wfc_stream_head ;

__attribute__((used)) static void wfc_stream_destroy_stream_ptr(WFCNativeStreamType stream)
{
   WFC_STREAM_T *stream_ptr = wfc_stream_global_lock_and_find_stream_ptr(stream);

   vcos_log_trace("%s: stream handle 0x%x", VCOS_FUNCTION, stream);

   if (stream_ptr)
   {
      if (stream_ptr->to_be_deleted)
      {
         STREAM_LOCK(stream_ptr);

         vcos_log_trace("%s: unlinking from list", VCOS_FUNCTION);

         if (stream_ptr->next)
            stream_ptr->next->prev = stream_ptr->prev;
         if (stream_ptr->prev)
            stream_ptr->prev->next = stream_ptr->next;
         else
            wfc_stream_head = stream_ptr->next;


         if (wfc_stream_head == ((void*)0))
            wfc_server_disconnect();
      }
      else
      {
         vcos_log_trace("%s: stream 0x%x recycled before destruction", VCOS_FUNCTION, stream);
         stream_ptr = ((void*)0);
      }
   }
   else
   {
      vcos_log_error("%s: stream 0x%x not found", VCOS_FUNCTION, stream);
   }

   GLOBAL_UNLOCK();

   if (stream_ptr)
   {

      STREAM_UNLOCK(stream_ptr);


      if(stream_ptr->info.flags & WFC_STREAM_FLAGS_REQ_RECT)
         vcos_thread_join(&stream_ptr->rect_req_thread_data, ((void*)0));


      vcos_mutex_delete(&stream_ptr->mutex);


      vcos_blockpool_free(stream_ptr);
   }
}
