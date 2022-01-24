#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  dest_rect ;
typedef  int /*<<< orphan*/  WFCint ;
typedef  int /*<<< orphan*/  WFCfloat ;
struct TYPE_4__ {void* req_rect_cb_args; int /*<<< orphan*/  (* req_rect_callback ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ WFC_STREAM_T ;
typedef  int /*<<< orphan*/  (* WFC_STREAM_REQ_RECT_CALLBACK_T ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;
typedef  scalar_t__ VCOS_STATUS_T ;
typedef  int /*<<< orphan*/  VCOS_SEMAPHORE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t WFC_RECT_HEIGHT ; 
 int WFC_RECT_SIZE ; 
 size_t WFC_RECT_WIDTH ; 
 size_t WFC_RECT_X ; 
 size_t WFC_RECT_Y ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  wfc_client_stream_post_sem ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC12(void *arg)
//!@brief Thread for handling server-side request to change source and/or destination
//! rectangles. One per stream (if enabled).
{
   WFCNativeStreamType stream = (WFCNativeStreamType) arg;

   WFC_STREAM_REQ_RECT_CALLBACK_T callback;
   void *cb_args;
   VCOS_SEMAPHORE_T rect_req_sem;
   VCOS_STATUS_T status;

   int32_t  vc_rects[8];
   WFCint   dest_rect[WFC_RECT_SIZE];
   WFCfloat src_rect[WFC_RECT_SIZE];

   FUNC4("wfc_stream_rect_req_thread: START: stream: %X", stream);

   WFC_STREAM_T *stream_ptr = FUNC11(stream);
   if (!stream_ptr)
      return NULL;

   // Get local pointers to stream parameters
   callback = stream_ptr->req_rect_callback;
   cb_args = stream_ptr->req_rect_cb_args;

   FUNC0(stream_ptr);

   status = FUNC5(&rect_req_sem, "WFC rect req", 0);
   FUNC3(status == VCOS_SUCCESS);      // On all relevant platforms

   while (status == VCOS_SUCCESS)
   {
      FUNC10(stream, wfc_client_stream_post_sem, &rect_req_sem);

      // Await new values from server
      FUNC7(&rect_req_sem);

      status = FUNC9(stream, vc_rects);
      if (status == VCOS_SUCCESS)
      {
         // Convert from VC/dispmanx to WF-C types.
         FUNC8(sizeof(dest_rect) == (4 * sizeof(int32_t)));
         FUNC2(dest_rect, vc_rects, sizeof(dest_rect)); // Types are equivalent

         src_rect[WFC_RECT_X] = FUNC1(vc_rects[4]);
         src_rect[WFC_RECT_Y] = FUNC1(vc_rects[5]);
         src_rect[WFC_RECT_WIDTH] = FUNC1(vc_rects[6]);
         src_rect[WFC_RECT_HEIGHT] = FUNC1(vc_rects[7]);

         callback(cb_args, dest_rect, src_rect);
      }
   }

   FUNC6(&rect_req_sem);

   FUNC4("wfc_stream_rect_req_thread: END: stream: %X", stream);

   return NULL;
}