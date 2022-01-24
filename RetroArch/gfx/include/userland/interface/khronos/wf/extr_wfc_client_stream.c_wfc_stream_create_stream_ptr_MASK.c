#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int size; } ;
struct TYPE_10__ {int to_be_deleted; struct TYPE_10__* prev; struct TYPE_10__* next; TYPE_1__ info; int /*<<< orphan*/  handle; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ WFC_STREAM_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;
typedef  scalar_t__ VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ VCOS_SUCCESS ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  wfc_stream_blockpool ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* wfc_stream_head ; 

__attribute__((used)) static WFC_STREAM_T *FUNC10(WFCNativeStreamType stream, bool allow_duplicate)
{
   WFC_STREAM_T *stream_ptr = FUNC9(stream);

   FUNC5("%s: stream handle 0x%x", VCOS_FUNCTION, stream);

   if (stream_ptr && !stream_ptr->to_be_deleted)
   {
      if (!allow_duplicate)
      {
         FUNC4("%s: attempt to create duplicate of stream handle 0x%x", VCOS_FUNCTION, stream);
         // Stream already exists, return NULL
         stream_ptr = NULL;
      }
      else
      {
         FUNC5("%s: duplicate of stream handle 0x%x created", VCOS_FUNCTION, stream);

         FUNC1(stream_ptr);
      }
   }
   else
   {
      if (stream_ptr)
      {
         FUNC5("%s: recycling data block for stream handle 0x%x", VCOS_FUNCTION, stream);

         // Recycle existing entry
         stream_ptr->to_be_deleted = false;

         FUNC1(stream_ptr);
      }
      else
      {
         FUNC5("%s: allocating block for stream handle 0x%x", VCOS_FUNCTION, stream);

         // Create new block and insert it into the list
         stream_ptr = FUNC2(&wfc_stream_blockpool);

         if (stream_ptr)
         {
            VCOS_STATUS_T status;

            status = FUNC6(&stream_ptr->mutex, "WFC_STREAM_T mutex");
            if (FUNC7(status == VCOS_SUCCESS))
            {
               FUNC1(stream_ptr);

               // First stream in this process, connect
               if (!wfc_stream_head)
                  FUNC8();

               stream_ptr->handle = stream;
               stream_ptr->info.size = sizeof(stream_ptr->info);

               // Insert data into list
               stream_ptr->next = wfc_stream_head;
               if (wfc_stream_head)
                  wfc_stream_head->prev = stream_ptr;
               wfc_stream_head = stream_ptr;
            }
            else
            {
               FUNC4("%s: unable to create mutex for stream handle 0x%x", VCOS_FUNCTION, stream);
               FUNC3(stream_ptr);
               stream_ptr = NULL;
            }
         }
         else
         {
            FUNC4("%s: unable to allocate data for stream handle 0x%x", VCOS_FUNCTION, stream);
         }
      }
   }

   FUNC0();

   return stream_ptr;
}