#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  commandId; } ;
typedef  TYPE_2__ swapBuffersCommand_t ;
struct TYPE_6__ {int msec; } ;
struct TYPE_9__ {TYPE_1__ pc; } ;
struct TYPE_8__ {int frontEndMsec; int /*<<< orphan*/  registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  RC_SWAP_BUFFERS ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_4__ backEnd ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_3__ tr ; 

void FUNC3( int *frontEndMsec, int *backEndMsec ) {
	swapBuffersCommand_t	*cmd;

	if ( !tr.registered ) {
		return;
	}
	cmd = FUNC0( sizeof( *cmd ) );
	if ( !cmd ) {
		return;
	}
	cmd->commandId = RC_SWAP_BUFFERS;

	FUNC1( qtrue );

	// use the other buffers next frame, because another CPU
	// may still be rendering into the current ones
	FUNC2();

	if ( frontEndMsec ) {
		*frontEndMsec = tr.frontEndMsec;
	}
	tr.frontEndMsec = 0;
	if ( backEndMsec ) {
		*backEndMsec = backEnd.pc.msec;
	}
	backEnd.pc.msec = 0;
}