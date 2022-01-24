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
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  open_handle; } ;
struct TYPE_5__ {scalar_t__ cmd_code; scalar_t__ xid; scalar_t__* params; } ;
typedef  TYPE_1__ FILESERV_MSG_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCHI_FLAGS_BLOCK_UNTIL_QUEUED ; 
 scalar_t__ VCHI_MAX_MSG_SIZE ; 
 TYPE_4__ vc_filesys_client ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3( FILESERV_MSG_T* msg, uint32_t retval, uint32_t nbytes )
{
   int success = -1;
   //convert all to over the wire values
   FUNC1(&msg->cmd_code, retval);
   FUNC1(&msg->xid, msg->xid);
   FUNC1(&msg->params[0], msg->params[0]);
   FUNC1(&msg->params[1], msg->params[1]);
   FUNC1(&msg->params[2], msg->params[2]);
   FUNC1(&msg->params[3], msg->params[3]);

   //start with 8 because always xid and retval
   nbytes += 8;

   if(FUNC2(nbytes <= VCHI_MAX_MSG_SIZE))
      success = (int) FUNC0( vc_filesys_client.open_handle, msg, nbytes, VCHI_FLAGS_BLOCK_UNTIL_QUEUED, NULL );

   return success;
}