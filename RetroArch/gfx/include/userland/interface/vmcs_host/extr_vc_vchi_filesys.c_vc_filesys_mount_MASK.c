#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* params; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_2__ fileserv_msg; } ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef  TYPE_1__ FILESERV_MSG_T ;

/* Variables and functions */
 int FILESERV_MAX_DATA ; 
 scalar_t__ FILESERV_RESP_OK ; 
 int VCHI_BULK_GRANULARITY ; 
 int /*<<< orphan*/  VC_FILESYS_MOUNT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*) ; 
 TYPE_3__ vc_filesys_client ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

int FUNC5(const char *device, const char *mountpoint, const char *options)
{
   int set = -1, len;
   int a = FUNC3(device);
   int b = FUNC3(mountpoint);
   int c = FUNC3(options);

   if(a + b + c + 3 < FILESERV_MAX_DATA && FUNC0() == 0)
   {
      char *str = (char *) vc_filesys_client.fileserv_msg.data;

      FUNC2(str, device, a);
      str[a] = 0;
      FUNC2(str+a+1, mountpoint, b);
      str[a+1+b] = 0;
      FUNC2(str+a+b+2, options, c);
      str[a+b+c+2] = 0;
      len = a + b + c + 3 + (int)(((FILESERV_MSG_T *)0)->data);
      len = ((len + (VCHI_BULK_GRANULARITY-1)) & ~(VCHI_BULK_GRANULARITY-1)) + VCHI_BULK_GRANULARITY;

      if (FUNC4(&vc_filesys_client.fileserv_msg, VC_FILESYS_MOUNT, len) == FILESERV_RESP_OK)
         set = (int) vc_filesys_client.fileserv_msg.params[0];

      FUNC1();
   }

   return set;
}