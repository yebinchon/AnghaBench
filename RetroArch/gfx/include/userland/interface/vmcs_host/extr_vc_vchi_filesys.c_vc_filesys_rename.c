
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
struct TYPE_4__ {TYPE_1__ fileserv_msg; } ;


 scalar_t__ FILESERV_RESP_OK ;
 int FS_MAX_PATH ;
 int VC_FILESYS_RENAME ;
 scalar_t__ lock_obtain () ;
 int lock_release () ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 TYPE_2__ vc_filesys_client ;
 scalar_t__ vchi_msg_stub (TYPE_1__*,int ,int) ;

int vc_filesys_rename(const char *oldfile, const char *newfile)
{
   int a, b, success = -1;


   if ((a = strlen(oldfile)) < FS_MAX_PATH && (b = strlen(newfile)) < FS_MAX_PATH && lock_obtain() == 0)
   {
      strncpy((char *)vc_filesys_client.fileserv_msg.data, oldfile, FS_MAX_PATH);
      strncpy((char *)&vc_filesys_client.fileserv_msg.data[a+1], newfile, FS_MAX_PATH);

      if (vchi_msg_stub(&vc_filesys_client.fileserv_msg, VC_FILESYS_RENAME, 16+a+1+b+1) == FILESERV_RESP_OK)
         success = 0;

      lock_release();
   }

   return success;
}
