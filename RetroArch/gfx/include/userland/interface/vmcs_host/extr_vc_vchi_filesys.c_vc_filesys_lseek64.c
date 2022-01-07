
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int int64_t ;
struct TYPE_3__ {int* params; } ;
struct TYPE_4__ {TYPE_1__ fileserv_msg; } ;


 scalar_t__ FILESERV_RESP_OK ;
 int VC_FILESYS_LSEEK64 ;
 scalar_t__ lock_obtain () ;
 int lock_release () ;
 TYPE_2__ vc_filesys_client ;
 scalar_t__ vchi_msg_stub (TYPE_1__*,int ,int) ;

int64_t vc_filesys_lseek64(int fildes, int64_t offset, int whence)
{
   int64_t set = -1;

   if(lock_obtain() == 0)
   {
      vc_filesys_client.fileserv_msg.params[0] = (uint32_t) fildes;
      vc_filesys_client.fileserv_msg.params[1] = (uint32_t) offset;
      vc_filesys_client.fileserv_msg.params[2] = (uint32_t)(offset >> 32);
      vc_filesys_client.fileserv_msg.params[3] = (uint32_t) whence;

      if (vchi_msg_stub(&vc_filesys_client.fileserv_msg, VC_FILESYS_LSEEK64, 16) == FILESERV_RESP_OK)
      {
         set = vc_filesys_client.fileserv_msg.params[0];
         set += (int64_t)vc_filesys_client.fileserv_msg.params[1] << 32;
      }

      lock_release();
   }

   return set;
}
