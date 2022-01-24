#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef  TYPE_2__ WFC_STREAM_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;
typedef  scalar_t__ VCOS_STATUS_T ;
typedef  int /*<<< orphan*/  VCOS_SEMAPHORE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ VCOS_SUCCESS ; 
 int WFC_STREAM_FLAGS_BUF_AVAIL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  wfc_client_stream_post_sem ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(WFCNativeStreamType stream)
// Suspend until buffer is available on the server.
{
   FUNC2("%s: stream 0x%x", VCOS_FUNCTION, stream);

   WFC_STREAM_T *stream_ptr = FUNC11(stream);
   if (!stream_ptr)
      return;

   if(FUNC7(stream_ptr->info.flags & WFC_STREAM_FLAGS_BUF_AVAIL))
   {
      VCOS_SEMAPHORE_T image_available_sem;
      VCOS_STATUS_T status;

      // Long running operation, so keep VC alive until it completes.
      FUNC10();

      status = FUNC3(&image_available_sem, "WFC image available", 0);
      FUNC1(status == VCOS_SUCCESS);      // For all relevant platforms
      FUNC6(status);

      FUNC9(stream, wfc_client_stream_post_sem, &image_available_sem);

      FUNC2("%s: pre async sem wait: stream: %X", VCOS_FUNCTION, stream);
      FUNC5(&image_available_sem);
      FUNC2("%s: post async sem wait: stream: %X", VCOS_FUNCTION, stream);

      FUNC4(&image_available_sem);
      FUNC8();
   }

   FUNC0(stream_ptr);

}