#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  smpActive; } ;
struct TYPE_5__ {scalar_t__ integer; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 int /*<<< orphan*/  RB_RenderThread ; 
 TYPE_3__ glConfig ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__* r_smp ; 
 TYPE_1__ ri ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4( void ) {
	glConfig.smpActive = qfalse;
	if ( r_smp->integer ) {
		ri.Printf( PRINT_ALL, "Trying SMP acceleration...\n" );
		if ( FUNC0( RB_RenderThread ) ) {
			ri.Printf( PRINT_ALL, "...succeeded.\n" );
			glConfig.smpActive = qtrue;
		} else {
			ri.Printf( PRINT_ALL, "...failed.\n" );
		}
	}
}