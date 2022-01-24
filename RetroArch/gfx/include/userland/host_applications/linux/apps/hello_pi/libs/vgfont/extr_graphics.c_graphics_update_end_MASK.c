#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_2__ {scalar_t__ current_update; scalar_t__ dispman_start_count; } ;

/* Variables and functions */
 scalar_t__ DISPMANX_NO_HANDLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ gx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

int32_t FUNC4( void )
{
   int32_t success = -1;

   // make sure you are checking the return value of graphics_update_start
   if(FUNC3(gx.current_update != DISPMANX_NO_HANDLE))
   {
      //check we are in an update
      if(FUNC3(gx.dispman_start_count > 0))
      {
         //dec the counter
         gx.dispman_start_count--;

         success = 0;

         //is the counter now 0?
         if( 0 == gx.dispman_start_count )
         {
            FUNC0();
            if( FUNC2( gx.current_update ) != 0 )
            {
               //error
               success = -1;
               FUNC1( 0 );
            }
         }
      }
   }

   return success;
}