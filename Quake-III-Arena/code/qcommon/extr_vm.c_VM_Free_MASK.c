#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ instructionPointers; scalar_t__ dataBase; scalar_t__ codeBase; scalar_t__ dllHandle; } ;
typedef  TYPE_1__ vm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * currentVM ; 
 int /*<<< orphan*/ * lastVM ; 

void FUNC3( vm_t *vm ) {

	if ( vm->dllHandle ) {
		FUNC1( vm->dllHandle );
		FUNC0( vm, 0, sizeof( *vm ) );
	}
#if 0	// now automatically freed by hunk
	if ( vm->codeBase ) {
		Z_Free( vm->codeBase );
	}
	if ( vm->dataBase ) {
		Z_Free( vm->dataBase );
	}
	if ( vm->instructionPointers ) {
		Z_Free( vm->instructionPointers );
	}
#endif
	FUNC0( vm, 0, sizeof( *vm ) );

	currentVM = NULL;
	lastVM = NULL;
}