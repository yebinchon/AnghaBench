
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_2__ {int num_connections; int command_buffer; int * open_handle; } ;


 int GENCMD_MAX_LENGTH ;
 int VCHI_FLAGS_BLOCK_UNTIL_QUEUED ;
 TYPE_1__ gencmd_client ;
 scalar_t__ lock_obtain () ;
 int lock_release () ;
 int release_gencmd_service () ;
 int use_gencmd_service () ;
 int vchi_msg_queue (int ,int ,int,int ,int *) ;
 int vsnprintf (int ,int,char const*,int ) ;

int vc_gencmd_send_list ( const char *format, va_list a )
{
   int success = -1;


   if(lock_obtain() == 0)
   {
      int length = vsnprintf( gencmd_client.command_buffer, GENCMD_MAX_LENGTH, format, a );

      if (length >= 0 && length < GENCMD_MAX_LENGTH)
      {
         int i;
         use_gencmd_service();
         for( i=0; i<gencmd_client.num_connections; i++ ) {
            success = vchi_msg_queue( gencmd_client.open_handle[i],
                                           gencmd_client.command_buffer,
                                           length+1,
                                           VCHI_FLAGS_BLOCK_UNTIL_QUEUED, ((void*)0) );

            if(success == 0)
            {
               break;
            }
         }
         release_gencmd_service();
      }

      lock_release();
   }

   return success;
}
