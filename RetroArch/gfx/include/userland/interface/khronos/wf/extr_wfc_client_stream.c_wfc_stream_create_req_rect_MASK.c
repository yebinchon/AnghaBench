#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  rect_req_thread_data; void* req_rect_cb_args; int /*<<< orphan*/ * req_rect_callback; } ;
typedef  TYPE_1__ WFC_STREAM_T ;
typedef  int /*<<< orphan*/ * WFC_STREAM_REQ_RECT_CALLBACK_T ;
typedef  scalar_t__ WFCNativeStreamType ;
typedef  scalar_t__ VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ VCOS_SUCCESS ; 
 int WFC_STREAM_FLAGS_REQ_RECT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (scalar_t__,int) ; 
 TYPE_1__* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  wfc_stream_rect_req_thread ; 

uint32_t FUNC7
   (WFCNativeStreamType stream, uint32_t flags,
      WFC_STREAM_REQ_RECT_CALLBACK_T callback, void *cb_args)
// Create a stream, using the given stream handle, which will notify the calling
// module when the server requests a change in source and/or destination rectangle,
// using the supplied callback. Return zero if OK.
{
   FUNC3("wfc_stream_create_req_rect: stream %X", stream);

   uint32_t failure;

   failure = FUNC5(stream, flags | WFC_STREAM_FLAGS_REQ_RECT);
   if (failure)
      return failure;

   WFC_STREAM_T *stream_ptr = FUNC6(stream);
   // Stream just created, so ought to be found
   FUNC1(stream_ptr);

   // There's no point creating this type of stream if you don't supply a callback
   // to update the src/dest rects via WF-C.
   FUNC1(callback != NULL);

   stream_ptr->req_rect_callback = callback;
   stream_ptr->req_rect_cb_args = cb_args;

   // Create thread for handling server-side request to change source
   // and/or destination rectangles. One per stream (if enabled).
   VCOS_STATUS_T status = FUNC4(&stream_ptr->rect_req_thread_data, "wfc_stream_rect_req_thread",
      NULL, wfc_stream_rect_req_thread, (void *) stream);
   FUNC2(status == VCOS_SUCCESS);

   FUNC0(stream_ptr);

   return 0;
}