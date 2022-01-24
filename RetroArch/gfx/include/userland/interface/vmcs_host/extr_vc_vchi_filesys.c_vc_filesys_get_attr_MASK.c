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
typedef  scalar_t__ fattributes_t ;
struct TYPE_3__ {scalar_t__* params; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ fileserv_msg; } ;

/* Variables and functions */
 scalar_t__ FILESERV_RESP_OK ; 
 int /*<<< orphan*/  FS_MAX_PATH ; 
 int /*<<< orphan*/  VC_FILESYS_GET_ATTR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_2__ vc_filesys_client ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC5(const char *path, fattributes_t *attr)
{
   int success = -1;

   if(FUNC0() == 0)
   {
      FUNC3((char *)vc_filesys_client.fileserv_msg.data, path, FS_MAX_PATH);

      if (FUNC4(&vc_filesys_client.fileserv_msg, VC_FILESYS_GET_ATTR,
                        (int)(16+FUNC2((char *)vc_filesys_client.fileserv_msg.data)+1)) == FILESERV_RESP_OK)
      {
         success = 0;
         *attr = (fattributes_t) vc_filesys_client.fileserv_msg.params[0];
      }

      FUNC1();
   }

   return success;
}