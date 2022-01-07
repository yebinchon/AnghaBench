
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long uint32_t ;
struct TYPE_3__ {long* params; scalar_t__ cmd_code; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ fileserv_msg; int response_event; int open_handle; } ;


 int FILESERV_MAX_BULK ;
 long FILESERV_MAX_BULK_SECTOR ;
 scalar_t__ FILESERV_RESP_OK ;
 long FILESERV_SECTOR_LENGTH ;
 int FS_MAX_PATH ;
 int VCHI_BULK_ALIGN ;
 int VCHI_BULK_ROUND_UP (long) ;
 int VCHI_FLAGS_BLOCK_UNTIL_DATA_READ ;
 scalar_t__ VCOS_SUCCESS ;
 int VC_FILESYS_WRITE_SECTORS ;
 scalar_t__ lock_obtain () ;
 int lock_release () ;
 scalar_t__ strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 TYPE_2__ vc_filesys_client ;
 scalar_t__ vchi_bulk_queue_transmit (int ,char*,int ,int ,int *) ;
 scalar_t__ vchi_msg_stub_noblock (TYPE_1__*,int ,int) ;
 scalar_t__ vcos_event_wait (int *) ;

int vc_filesys_write_sectors(const char *path, uint32_t sector_num, char *sectors, uint32_t num_sectors, uint32_t *sectors_written)
{
   uint32_t align_bytes = 0;
   char* bulk_addr = sectors;
   int len;
   int ret = -1;

   len = (int) strlen(path);
   if((len = (int) strlen(path)) < FS_MAX_PATH && lock_obtain() == 0)
   {
      vc_filesys_client.fileserv_msg.params[0] = sector_num;
      vc_filesys_client.fileserv_msg.params[1] = num_sectors;


      align_bytes = ((unsigned long)sectors & (VCHI_BULK_ALIGN-1));
      vc_filesys_client.fileserv_msg.params[2] = align_bytes;


      strncpy(((char *)vc_filesys_client.fileserv_msg.data), path, FS_MAX_PATH);


      if (vchi_msg_stub_noblock(&vc_filesys_client.fileserv_msg, VC_FILESYS_WRITE_SECTORS, 16+len+1) == 0)
      {
         if(align_bytes) {

            bulk_addr -= align_bytes;
         }

         while(num_sectors) {
            uint32_t bulk_sectors = (num_sectors > FILESERV_MAX_BULK_SECTOR) ? (uint32_t)FILESERV_MAX_BULK_SECTOR : num_sectors;

            if(vchi_bulk_queue_transmit( vc_filesys_client.open_handle, bulk_addr,
                                         VCHI_BULK_ROUND_UP((bulk_sectors*FILESERV_SECTOR_LENGTH)+align_bytes),
                                         VCHI_FLAGS_BLOCK_UNTIL_DATA_READ, ((void*)0)) != 0)
               break;


            bulk_addr += FILESERV_MAX_BULK;
            num_sectors -= bulk_sectors;
         }


         if(vcos_event_wait(&vc_filesys_client.response_event) == VCOS_SUCCESS && vc_filesys_client.fileserv_msg.cmd_code == FILESERV_RESP_OK)
         {
            *sectors_written = vc_filesys_client.fileserv_msg.params[0];
            ret = 0;
         }
         else
         {

            *sectors_written = vc_filesys_client.fileserv_msg.params[1];
            ret = vc_filesys_client.fileserv_msg.params[0];
         }
      }

      lock_release();
   }

   return ret;
}
