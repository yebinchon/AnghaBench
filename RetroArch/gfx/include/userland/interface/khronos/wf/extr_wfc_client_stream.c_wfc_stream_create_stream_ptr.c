
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int size; } ;
struct TYPE_10__ {int to_be_deleted; struct TYPE_10__* prev; struct TYPE_10__* next; TYPE_1__ info; int handle; int mutex; } ;
typedef TYPE_2__ WFC_STREAM_T ;
typedef int WFCNativeStreamType ;
typedef scalar_t__ VCOS_STATUS_T ;


 int GLOBAL_UNLOCK () ;
 int STREAM_LOCK (TYPE_2__*) ;
 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 TYPE_2__* vcos_blockpool_calloc (int *) ;
 int vcos_blockpool_free (TYPE_2__*) ;
 int vcos_log_error (char*,int ,int ) ;
 int vcos_log_trace (char*,int ,int ) ;
 scalar_t__ vcos_mutex_create (int *,char*) ;
 scalar_t__ vcos_verify (int) ;
 int wfc_server_connect () ;
 int wfc_stream_blockpool ;
 TYPE_2__* wfc_stream_global_lock_and_find_stream_ptr (int ) ;
 TYPE_2__* wfc_stream_head ;

__attribute__((used)) static WFC_STREAM_T *wfc_stream_create_stream_ptr(WFCNativeStreamType stream, bool allow_duplicate)
{
   WFC_STREAM_T *stream_ptr = wfc_stream_global_lock_and_find_stream_ptr(stream);

   vcos_log_trace("%s: stream handle 0x%x", VCOS_FUNCTION, stream);

   if (stream_ptr && !stream_ptr->to_be_deleted)
   {
      if (!allow_duplicate)
      {
         vcos_log_error("%s: attempt to create duplicate of stream handle 0x%x", VCOS_FUNCTION, stream);

         stream_ptr = ((void*)0);
      }
      else
      {
         vcos_log_trace("%s: duplicate of stream handle 0x%x created", VCOS_FUNCTION, stream);

         STREAM_LOCK(stream_ptr);
      }
   }
   else
   {
      if (stream_ptr)
      {
         vcos_log_trace("%s: recycling data block for stream handle 0x%x", VCOS_FUNCTION, stream);


         stream_ptr->to_be_deleted = 0;

         STREAM_LOCK(stream_ptr);
      }
      else
      {
         vcos_log_trace("%s: allocating block for stream handle 0x%x", VCOS_FUNCTION, stream);


         stream_ptr = vcos_blockpool_calloc(&wfc_stream_blockpool);

         if (stream_ptr)
         {
            VCOS_STATUS_T status;

            status = vcos_mutex_create(&stream_ptr->mutex, "WFC_STREAM_T mutex");
            if (vcos_verify(status == VCOS_SUCCESS))
            {
               STREAM_LOCK(stream_ptr);


               if (!wfc_stream_head)
                  wfc_server_connect();

               stream_ptr->handle = stream;
               stream_ptr->info.size = sizeof(stream_ptr->info);


               stream_ptr->next = wfc_stream_head;
               if (wfc_stream_head)
                  wfc_stream_head->prev = stream_ptr;
               wfc_stream_head = stream_ptr;
            }
            else
            {
               vcos_log_error("%s: unable to create mutex for stream handle 0x%x", VCOS_FUNCTION, stream);
               vcos_blockpool_free(stream_ptr);
               stream_ptr = ((void*)0);
            }
         }
         else
         {
            vcos_log_error("%s: unable to allocate data for stream handle 0x%x", VCOS_FUNCTION, stream);
         }
      }
   }

   GLOBAL_UNLOCK();

   return stream_ptr;
}
