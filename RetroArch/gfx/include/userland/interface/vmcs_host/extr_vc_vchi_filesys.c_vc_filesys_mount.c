
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* params; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_2__ fileserv_msg; } ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ FILESERV_MSG_T ;


 int FILESERV_MAX_DATA ;
 scalar_t__ FILESERV_RESP_OK ;
 int VCHI_BULK_GRANULARITY ;
 int VC_FILESYS_MOUNT ;
 scalar_t__ lock_obtain () ;
 int lock_release () ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 TYPE_3__ vc_filesys_client ;
 scalar_t__ vchi_msg_stub (TYPE_2__*,int ,int) ;

int vc_filesys_mount(const char *device, const char *mountpoint, const char *options)
{
   int set = -1, len;
   int a = strlen(device);
   int b = strlen(mountpoint);
   int c = strlen(options);

   if(a + b + c + 3 < FILESERV_MAX_DATA && lock_obtain() == 0)
   {
      char *str = (char *) vc_filesys_client.fileserv_msg.data;

      memcpy(str, device, a);
      str[a] = 0;
      memcpy(str+a+1, mountpoint, b);
      str[a+1+b] = 0;
      memcpy(str+a+b+2, options, c);
      str[a+b+c+2] = 0;
      len = a + b + c + 3 + (int)(((FILESERV_MSG_T *)0)->data);
      len = ((len + (VCHI_BULK_GRANULARITY-1)) & ~(VCHI_BULK_GRANULARITY-1)) + VCHI_BULK_GRANULARITY;

      if (vchi_msg_stub(&vc_filesys_client.fileserv_msg, VC_FILESYS_MOUNT, len) == FILESERV_RESP_OK)
         set = (int) vc_filesys_client.fileserv_msg.params[0];

      lock_release();
   }

   return set;
}
