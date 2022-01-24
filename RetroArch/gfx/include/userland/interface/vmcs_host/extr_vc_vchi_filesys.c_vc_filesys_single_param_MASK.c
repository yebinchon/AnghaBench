#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/ * params; } ;
struct TYPE_4__ {TYPE_1__ fileserv_msg; } ;

/* Variables and functions */
 scalar_t__ FILESERV_RESP_OK ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ vc_filesys_client ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(uint32_t param, uint32_t fn)
{
   int success = -1;

   if(FUNC0() == 0)
   {
      vc_filesys_client.fileserv_msg.params[0] = param;
      if (FUNC2(&vc_filesys_client.fileserv_msg, fn, 4) == FILESERV_RESP_OK)
         success = 0;

      FUNC1();
   }

   return success;
}