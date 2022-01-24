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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ initialised; int /*<<< orphan*/  open_handle; int /*<<< orphan*/  vc_msg; int /*<<< orphan*/  filesys_msg_avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCHI_FLAGS_NONE ; 
 scalar_t__ VCOS_SUCCESS ; 
 TYPE_1__ vc_filesys_client ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC6(void *arg)
{
   int32_t success;
   uint32_t msg_len;

   (void)arg;

   FUNC1();

   while(1) {
      // wait for the semaphore to say that there is a message
      if (FUNC5(&vc_filesys_client.filesys_msg_avail) != VCOS_SUCCESS || vc_filesys_client.initialised == 0)
         break;

      FUNC4(vc_filesys_client.open_handle);
      // read the message - should we really "peek" this
      while (1) {
         success = FUNC2(vc_filesys_client.open_handle, &vc_filesys_client.vc_msg,
                                    sizeof(vc_filesys_client.vc_msg), &msg_len, VCHI_FLAGS_NONE);
         if (!success)
            break;

         /* coverity[tainted_string_argument] */
         success = (int32_t) FUNC0(&vc_filesys_client.vc_msg, msg_len);
         (void)success;
      }
      FUNC3(vc_filesys_client.open_handle);
   }

   return 0;
}