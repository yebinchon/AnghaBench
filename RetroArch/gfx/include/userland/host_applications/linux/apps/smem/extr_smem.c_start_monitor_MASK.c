#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  control_c ; 
 int /*<<< orphan*/  quit_event ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3( void )
{
   if ( FUNC1( &quit_event, "smem" ) != VCOS_SUCCESS )
   {
      FUNC2( "Failed to create quit event" );

      return -1;
   }

   // Handle the INT and TERM signals so we can quit
   FUNC0( SIGINT, control_c );
   FUNC0( SIGTERM, control_c );

   return 0;
}