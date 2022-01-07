
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_3__ {int* params; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ fileserv_msg; } ;


 scalar_t__ FILESERV_RESP_OK ;
 int FS_MAX_PATH ;
 int VC_FILESYS_DIRSIZE ;
 scalar_t__ lock_obtain () ;
 int lock_release () ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,char const*,int ) ;
 TYPE_2__ vc_filesys_client ;
 scalar_t__ vchi_msg_stub (TYPE_1__*,int ,int) ;

int64_t vc_filesys_dirsize(const char *path, uint32_t *num_files, uint32_t *num_dirs)
{
   int64_t ret = -1;

   if(lock_obtain() == 0)
   {
      strncpy((char *)vc_filesys_client.fileserv_msg.data, path, FS_MAX_PATH);



      if ( vchi_msg_stub(&vc_filesys_client.fileserv_msg,
                         VC_FILESYS_DIRSIZE,
                         (int)(16+strlen((char *)vc_filesys_client.fileserv_msg.data)+1)) == FILESERV_RESP_OK )
      {
         ret = vc_filesys_client.fileserv_msg.params[0];
         ret += (int64_t)vc_filesys_client.fileserv_msg.params[1] << 32;
         if (num_files)
            *num_files = vc_filesys_client.fileserv_msg.params[2];
         if (num_dirs)
            *num_dirs = vc_filesys_client.fileserv_msg.params[3];
      }

      lock_release();
   }

   return ret;
}
