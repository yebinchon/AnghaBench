
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {void** params; } ;
struct TYPE_4__ {TYPE_1__ fileserv_msg; } ;


 scalar_t__ FILESERV_RESP_OK ;
 int VC_FILESYS_LSEEK ;
 scalar_t__ lock_obtain () ;
 int lock_release () ;
 TYPE_2__ vc_filesys_client ;
 scalar_t__ vchi_msg_stub (TYPE_1__*,int ,int) ;

long vc_filesys_lseek(int fildes, long offset, int whence)
{
   long set = -1;

   if(lock_obtain() == 0)
   {
      vc_filesys_client.fileserv_msg.params[0] = (uint32_t) fildes;
      vc_filesys_client.fileserv_msg.params[1] = (uint32_t) offset;
      vc_filesys_client.fileserv_msg.params[2] = (uint32_t) whence;

      if (vchi_msg_stub(&vc_filesys_client.fileserv_msg, VC_FILESYS_LSEEK, 12) == FILESERV_RESP_OK)
         set = (long) vc_filesys_client.fileserv_msg.params[0];

      lock_release();
   }

   return set;
}
