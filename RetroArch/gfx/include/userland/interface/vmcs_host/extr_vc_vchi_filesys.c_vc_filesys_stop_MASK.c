#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ bulk_buffer; int /*<<< orphan*/  filesys_lock; int /*<<< orphan*/  response_event; int /*<<< orphan*/  filesys_msg_avail; int /*<<< orphan*/  filesys_thread; scalar_t__ initialised; int /*<<< orphan*/  open_handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 TYPE_1__ vc_filesys_client ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void**) ; 

void FUNC8 ()
{
   int32_t result;
   void *dummy;

   if(FUNC0() != 0)
      return;

   result = FUNC1(vc_filesys_client.open_handle);
   FUNC2(result == 0);

   vc_filesys_client.initialised = 0;

   FUNC4(&vc_filesys_client.filesys_msg_avail);
   FUNC7(&vc_filesys_client.filesys_thread, &dummy);

   FUNC3(&vc_filesys_client.filesys_msg_avail);
   FUNC3(&vc_filesys_client.response_event);
   FUNC6(&vc_filesys_client.filesys_lock);

   if(vc_filesys_client.bulk_buffer)
      FUNC5(vc_filesys_client.bulk_buffer);
}