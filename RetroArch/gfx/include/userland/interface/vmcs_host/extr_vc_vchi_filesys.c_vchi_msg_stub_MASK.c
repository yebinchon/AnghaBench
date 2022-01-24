#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  response_event; } ;
struct TYPE_5__ {scalar_t__ cmd_code; } ;
typedef  TYPE_1__ FILESERV_MSG_T ;

/* Variables and functions */
 scalar_t__ VCOS_SUCCESS ; 
 TYPE_4__ vc_filesys_client ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(FILESERV_MSG_T* msg, uint16_t cmd_id, int msg_len )
{
   int ret = -1;
   FUNC0(msg, cmd_id, msg_len);

   // wait to receive response
   if(FUNC1(&vc_filesys_client.response_event) == VCOS_SUCCESS)
      ret = (int) msg->cmd_code;

   return ret;
}