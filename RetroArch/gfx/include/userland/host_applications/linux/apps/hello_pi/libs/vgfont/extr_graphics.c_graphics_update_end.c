
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_2__ {scalar_t__ current_update; scalar_t__ dispman_start_count; } ;


 scalar_t__ DISPMANX_NO_HANDLE ;
 int eglWaitClient () ;
 TYPE_1__ gx ;
 int vc_assert (int ) ;
 scalar_t__ vc_dispmanx_update_submit_sync (scalar_t__) ;
 scalar_t__ vcos_verify (int) ;

int32_t graphics_update_end( void )
{
   int32_t success = -1;


   if(vcos_verify(gx.current_update != DISPMANX_NO_HANDLE))
   {

      if(vcos_verify(gx.dispman_start_count > 0))
      {

         gx.dispman_start_count--;

         success = 0;


         if( 0 == gx.dispman_start_count )
         {
            eglWaitClient();
            if( vc_dispmanx_update_submit_sync( gx.current_update ) != 0 )
            {

               success = -1;
               vc_assert( 0 );
            }
         }
      }
   }

   return success;
}
