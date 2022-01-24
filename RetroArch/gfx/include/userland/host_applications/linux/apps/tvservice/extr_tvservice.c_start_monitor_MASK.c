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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  control_c ; 
 int /*<<< orphan*/  quit_event ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tvservice_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4( void )
{
   if ( FUNC3( &quit_event, "tvservice" ) != VCOS_SUCCESS )
   {
      FUNC0( "Failed to create quit event" );

      return -1;
   }

   // Handle the INT and TERM signals so we can quit
   FUNC1( SIGINT, control_c );
   FUNC1( SIGTERM, control_c );

   FUNC2( &tvservice_callback, NULL );

   return 0;
}