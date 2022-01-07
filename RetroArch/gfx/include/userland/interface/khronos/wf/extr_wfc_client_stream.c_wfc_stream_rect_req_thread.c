
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
typedef int dest_rect ;
typedef int WFCint ;
typedef int WFCfloat ;
struct TYPE_4__ {void* req_rect_cb_args; int (* req_rect_callback ) (void*,int *,int *) ;} ;
typedef TYPE_1__ WFC_STREAM_T ;
typedef int (* WFC_STREAM_REQ_RECT_CALLBACK_T ) (void*,int *,int *) ;
typedef int WFCNativeStreamType ;
typedef scalar_t__ VCOS_STATUS_T ;
typedef int VCOS_SEMAPHORE_T ;


 int STREAM_UNLOCK (TYPE_1__*) ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_DISPMANX_TO_SRC_VAL (int ) ;
 size_t WFC_RECT_HEIGHT ;
 int WFC_RECT_SIZE ;
 size_t WFC_RECT_WIDTH ;
 size_t WFC_RECT_X ;
 size_t WFC_RECT_Y ;
 int memcpy (int *,int *,int) ;
 int vcos_assert (int) ;
 int vcos_log_info (char*,int ) ;
 scalar_t__ vcos_semaphore_create (int *,char*,int ) ;
 int vcos_semaphore_delete (int *) ;
 int vcos_semaphore_wait (int *) ;
 int vcos_static_assert (int) ;
 int wfc_client_stream_post_sem ;
 scalar_t__ wfc_server_stream_get_rects (int ,int *) ;
 int wfc_server_stream_on_rects_change (int ,int ,int *) ;
 TYPE_1__* wfc_stream_find_stream_ptr (int ) ;

__attribute__((used)) static void *wfc_stream_rect_req_thread(void *arg)


{
   WFCNativeStreamType stream = (WFCNativeStreamType) arg;

   WFC_STREAM_REQ_RECT_CALLBACK_T callback;
   void *cb_args;
   VCOS_SEMAPHORE_T rect_req_sem;
   VCOS_STATUS_T status;

   int32_t vc_rects[8];
   WFCint dest_rect[WFC_RECT_SIZE];
   WFCfloat src_rect[WFC_RECT_SIZE];

   vcos_log_info("wfc_stream_rect_req_thread: START: stream: %X", stream);

   WFC_STREAM_T *stream_ptr = wfc_stream_find_stream_ptr(stream);
   if (!stream_ptr)
      return ((void*)0);


   callback = stream_ptr->req_rect_callback;
   cb_args = stream_ptr->req_rect_cb_args;

   STREAM_UNLOCK(stream_ptr);

   status = vcos_semaphore_create(&rect_req_sem, "WFC rect req", 0);
   vcos_assert(status == VCOS_SUCCESS);

   while (status == VCOS_SUCCESS)
   {
      wfc_server_stream_on_rects_change(stream, wfc_client_stream_post_sem, &rect_req_sem);


      vcos_semaphore_wait(&rect_req_sem);

      status = wfc_server_stream_get_rects(stream, vc_rects);
      if (status == VCOS_SUCCESS)
      {

         vcos_static_assert(sizeof(dest_rect) == (4 * sizeof(int32_t)));
         memcpy(dest_rect, vc_rects, sizeof(dest_rect));

         src_rect[WFC_RECT_X] = WFC_DISPMANX_TO_SRC_VAL(vc_rects[4]);
         src_rect[WFC_RECT_Y] = WFC_DISPMANX_TO_SRC_VAL(vc_rects[5]);
         src_rect[WFC_RECT_WIDTH] = WFC_DISPMANX_TO_SRC_VAL(vc_rects[6]);
         src_rect[WFC_RECT_HEIGHT] = WFC_DISPMANX_TO_SRC_VAL(vc_rects[7]);

         callback(cb_args, dest_rect, src_rect);
      }
   }

   vcos_semaphore_delete(&rect_req_sem);

   vcos_log_info("wfc_stream_rect_req_thread: END: stream: %X", stream);

   return ((void*)0);
}
