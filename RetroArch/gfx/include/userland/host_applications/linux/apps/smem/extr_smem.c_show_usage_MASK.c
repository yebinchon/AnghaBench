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

__attribute__((used)) static void FUNC1( void )
{
   FUNC0( "Usage: smem [OPTION]..." );
   FUNC0( "  -a, --alloc=SIZE             Allocates a block of SIZE" );
   FUNC0( "  -p, --pid=PID                Use PID for desired action" );
   FUNC0( "  -s, --status=TYPE            Queries status of TYPE [for PID]" );
   FUNC0( "                all                    all (for current pid)" );
   FUNC0( "                vc                     videocore allocations" );
   FUNC0( "                map                    host map status" );
   FUNC0( "                map <pid>              host map status for pid" );
   FUNC0( "                host <pid>             host allocations for pid" );
   FUNC0( "  -h, --help                   Print this information" );
}