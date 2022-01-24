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
typedef  void* uint32_t ;
typedef  int int64_t ;
struct TYPE_3__ {int* params; } ;
struct TYPE_4__ {TYPE_1__ fileserv_msg; } ;

/* Variables and functions */
 scalar_t__ FILESERV_RESP_OK ; 
 int /*<<< orphan*/  VC_FILESYS_LSEEK64 ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ vc_filesys_client ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int64_t FUNC3(int fildes, int64_t offset, int whence)
{
   int64_t set = -1;

   if(FUNC0() == 0)
   {
      vc_filesys_client.fileserv_msg.params[0] = (uint32_t) fildes;
      vc_filesys_client.fileserv_msg.params[1] = (uint32_t) offset;        // LSB
      vc_filesys_client.fileserv_msg.params[2] = (uint32_t)(offset >> 32); // MSB
      vc_filesys_client.fileserv_msg.params[3] = (uint32_t) whence;

      if (FUNC2(&vc_filesys_client.fileserv_msg, VC_FILESYS_LSEEK64, 16) == FILESERV_RESP_OK)
      {
         set = vc_filesys_client.fileserv_msg.params[0];
         set += (int64_t)vc_filesys_client.fileserv_msg.params[1] << 32;
      }

      FUNC1();
   }

   return set;
}