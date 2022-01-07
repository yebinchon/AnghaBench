
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int* params; } ;
struct TYPE_4__ {TYPE_1__ fileserv_msg; } ;


 unsigned int FILESERV_MAX_BULK ;
 int VC_FILESYS_WRITE ;
 scalar_t__ lock_obtain () ;
 int lock_release () ;
 TYPE_2__ vc_filesys_client ;
 int vc_vchi_msg_bulk_write (TYPE_1__*,int ,int,int *) ;

int vc_filesys_write(int fildes, const void *buf, unsigned int nbyte)
{
   int num_wrt = 0;
   int bulk_bytes = 0;
   int actual_written = 0;
   uint8_t *ptr = (uint8_t*) buf;

   if (nbyte == 0) {
      return 0;
   }

   if(lock_obtain() == 0)
   {


      do {
         bulk_bytes = nbyte > FILESERV_MAX_BULK ? FILESERV_MAX_BULK : nbyte;


         vc_filesys_client.fileserv_msg.params[0] = (uint32_t)fildes;
         vc_filesys_client.fileserv_msg.params[1] = 0xffffffffU;

         actual_written = vc_vchi_msg_bulk_write(&vc_filesys_client.fileserv_msg , VC_FILESYS_WRITE, (uint32_t)bulk_bytes, (uint8_t*)ptr);

         if(bulk_bytes != actual_written) {
            if(actual_written < 0)
               num_wrt = -1;
            else
               num_wrt += actual_written;
            break;
         }

         ptr+=bulk_bytes;
         nbyte -= actual_written;
         num_wrt += actual_written;
      }while(nbyte > 0);

      lock_release();
   }

   return num_wrt;
}
