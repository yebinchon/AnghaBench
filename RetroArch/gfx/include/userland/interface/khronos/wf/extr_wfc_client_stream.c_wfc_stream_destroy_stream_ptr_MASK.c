#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  rect_req_thread_data; TYPE_2__ info; TYPE_4__* next; TYPE_1__* prev; scalar_t__ to_be_deleted; } ;
typedef  TYPE_3__ WFC_STREAM_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;
struct TYPE_12__ {TYPE_1__* prev; } ;
struct TYPE_9__ {TYPE_4__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int WFC_STREAM_FLAGS_REQ_RECT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_4__* wfc_stream_head ; 

__attribute__((used)) static void FUNC10(WFCNativeStreamType stream)
{
   WFC_STREAM_T *stream_ptr = FUNC9(stream);

   FUNC5("%s: stream handle 0x%x", VCOS_FUNCTION, stream);

   if (stream_ptr)
   {
      if (stream_ptr->to_be_deleted)
      {
         FUNC1(stream_ptr);

         FUNC5("%s: unlinking from list", VCOS_FUNCTION);

         if (stream_ptr->next)
            stream_ptr->next->prev = stream_ptr->prev;
         if (stream_ptr->prev)
            stream_ptr->prev->next = stream_ptr->next;
         else
            wfc_stream_head = stream_ptr->next;

         // No streams left in this process, disconnect
         if (wfc_stream_head == NULL)
            FUNC8();
      }
      else
      {
         FUNC5("%s: stream 0x%x recycled before destruction", VCOS_FUNCTION, stream);
         stream_ptr = NULL;
      }
   }
   else
   {
      FUNC4("%s: stream 0x%x not found", VCOS_FUNCTION, stream);
   }

   FUNC0();

   if (stream_ptr)
   {
      // Stream data block no longer in list, can safely destroy it
      FUNC2(stream_ptr);

      // Wait for rectangle request thread to complete
      if(stream_ptr->info.flags & WFC_STREAM_FLAGS_REQ_RECT)
         FUNC7(&stream_ptr->rect_req_thread_data, NULL);

      // Destroy mutex
      FUNC6(&stream_ptr->mutex);

      // Delete
      FUNC3(stream_ptr);
   }
}