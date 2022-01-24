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
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {TYPE_1__ fileserv_msg; } ;

/* Variables and functions */
 scalar_t__ FILESERV_RESP_OK ; 
 int FS_MAX_PATH ; 
 int /*<<< orphan*/  VC_FILESYS_RENAME ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 TYPE_2__ vc_filesys_client ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC5(const char *oldfile, const char *newfile)
{
   int a, b, success = -1;

   // Ensure the pathnames aren't too long
   if ((a = FUNC2(oldfile)) < FS_MAX_PATH && (b = FUNC2(newfile)) < FS_MAX_PATH && FUNC0() == 0)
   {
      FUNC3((char *)vc_filesys_client.fileserv_msg.data, oldfile, FS_MAX_PATH);
      FUNC3((char *)&vc_filesys_client.fileserv_msg.data[a+1], newfile, FS_MAX_PATH);

      if (FUNC4(&vc_filesys_client.fileserv_msg, VC_FILESYS_RENAME, 16+a+1+b+1) == FILESERV_RESP_OK)
         success = 0;

      FUNC1();
   }

   return success;
}