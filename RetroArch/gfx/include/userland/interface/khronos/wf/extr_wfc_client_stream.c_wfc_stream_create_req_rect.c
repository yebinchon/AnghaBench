
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int rect_req_thread_data; void* req_rect_cb_args; int * req_rect_callback; } ;
typedef TYPE_1__ WFC_STREAM_T ;
typedef int * WFC_STREAM_REQ_RECT_CALLBACK_T ;
typedef scalar_t__ WFCNativeStreamType ;
typedef scalar_t__ VCOS_STATUS_T ;


 int STREAM_UNLOCK (TYPE_1__*) ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_STREAM_FLAGS_REQ_RECT ;
 int vcos_assert (TYPE_1__*) ;
 int vcos_demand (int) ;
 int vcos_log_info (char*,scalar_t__) ;
 scalar_t__ vcos_thread_create (int *,char*,int *,int ,void*) ;
 int wfc_stream_create (scalar_t__,int) ;
 TYPE_1__* wfc_stream_find_stream_ptr (scalar_t__) ;
 int wfc_stream_rect_req_thread ;

uint32_t wfc_stream_create_req_rect
   (WFCNativeStreamType stream, uint32_t flags,
      WFC_STREAM_REQ_RECT_CALLBACK_T callback, void *cb_args)



{
   vcos_log_info("wfc_stream_create_req_rect: stream %X", stream);

   uint32_t failure;

   failure = wfc_stream_create(stream, flags | WFC_STREAM_FLAGS_REQ_RECT);
   if (failure)
      return failure;

   WFC_STREAM_T *stream_ptr = wfc_stream_find_stream_ptr(stream);

   vcos_assert(stream_ptr);



   vcos_assert(callback != ((void*)0));

   stream_ptr->req_rect_callback = callback;
   stream_ptr->req_rect_cb_args = cb_args;



   VCOS_STATUS_T status = vcos_thread_create(&stream_ptr->rect_req_thread_data, "wfc_stream_rect_req_thread",
      ((void*)0), wfc_stream_rect_req_thread, (void *) stream);
   vcos_demand(status == VCOS_SUCCESS);

   STREAM_UNLOCK(stream_ptr);

   return 0;
}
