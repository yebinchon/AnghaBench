
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_2__ {scalar_t__ dispman_start_count; scalar_t__ current_update; } ;


 scalar_t__ DISPMANX_NO_HANDLE ;
 TYPE_1__ gx ;
 int vc_assert (int ) ;
 scalar_t__ vc_dispmanx_update_start (int) ;

int32_t graphics_update_start(void)
{
   int32_t success = 0;


   if ( 0 == gx.dispman_start_count )
   {
      gx.current_update = vc_dispmanx_update_start( 10 );
      if( gx.current_update == DISPMANX_NO_HANDLE )
      {

         success = -1;
         vc_assert( 0 );
      }
   }

   if( success == 0 )
   {

      gx.dispman_start_count++;
   }

   return success;
}
