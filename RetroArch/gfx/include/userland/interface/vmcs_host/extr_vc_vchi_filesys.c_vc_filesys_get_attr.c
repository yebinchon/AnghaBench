
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ fattributes_t ;
struct TYPE_3__ {scalar_t__* params; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ fileserv_msg; } ;


 scalar_t__ FILESERV_RESP_OK ;
 int FS_MAX_PATH ;
 int VC_FILESYS_GET_ATTR ;
 scalar_t__ lock_obtain () ;
 int lock_release () ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,char const*,int ) ;
 TYPE_2__ vc_filesys_client ;
 scalar_t__ vchi_msg_stub (TYPE_1__*,int ,int) ;

int vc_filesys_get_attr(const char *path, fattributes_t *attr)
{
   int success = -1;

   if(lock_obtain() == 0)
   {
      strncpy((char *)vc_filesys_client.fileserv_msg.data, path, FS_MAX_PATH);

      if (vchi_msg_stub(&vc_filesys_client.fileserv_msg, VC_FILESYS_GET_ATTR,
                        (int)(16+strlen((char *)vc_filesys_client.fileserv_msg.data)+1)) == FILESERV_RESP_OK)
      {
         success = 0;
         *attr = (fattributes_t) vc_filesys_client.fileserv_msg.params[0];
      }

      lock_release();
   }

   return success;
}
