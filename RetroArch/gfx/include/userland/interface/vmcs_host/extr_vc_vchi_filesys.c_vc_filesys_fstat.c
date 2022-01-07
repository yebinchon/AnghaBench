
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int int64_t ;
struct TYPE_6__ {void** params; } ;
struct TYPE_7__ {TYPE_2__ fileserv_msg; } ;
struct TYPE_5__ {int st_size; void* st_modtime; } ;
typedef TYPE_1__ FSTAT_T ;


 scalar_t__ FILESERV_RESP_OK ;
 int VC_FILESYS_FSTAT ;
 scalar_t__ lock_obtain () ;
 int lock_release () ;
 TYPE_4__ vc_filesys_client ;
 scalar_t__ vchi_msg_stub (TYPE_2__*,int ,int) ;

int vc_filesys_fstat(int fildes, FSTAT_T *buf)
{
   int success = -1;

   if (buf != ((void*)0) && lock_obtain() == 0)
   {
      vc_filesys_client.fileserv_msg.params[0] = (uint32_t) fildes;
      if ( vchi_msg_stub(&vc_filesys_client.fileserv_msg, VC_FILESYS_FSTAT, 4) == FILESERV_RESP_OK )
      {
         buf->st_size = (int64_t)vc_filesys_client.fileserv_msg.params[0];
         buf->st_size |= (int64_t)vc_filesys_client.fileserv_msg.params[1] << 32;
         buf->st_modtime = (uint32_t)vc_filesys_client.fileserv_msg.params[2];

         success = 0;
      }

      lock_release();
   }

   return success;
}
