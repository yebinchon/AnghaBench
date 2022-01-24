#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * dataMask; int /*<<< orphan*/ * instructionPointersLength; int /*<<< orphan*/ * codeLength; scalar_t__ compiled; scalar_t__ dllHandle; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ vm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MAX_VM ; 
 TYPE_1__* vmTable ; 

void FUNC1( void ) {
	vm_t	*vm;
	int		i;

	FUNC0( "Registered virtual machines:\n" );
	for ( i = 0 ; i < MAX_VM ; i++ ) {
		vm = &vmTable[i];
		if ( !vm->name[0] ) {
			break;
		}
		FUNC0( "%s : ", vm->name );
		if ( vm->dllHandle ) {
			FUNC0( "native\n" );
			continue;
		}
		if ( vm->compiled ) {
			FUNC0( "compiled on load\n" );
		} else {
			FUNC0( "interpreted\n" );
		}
		FUNC0( "    code length : %7i\n", vm->codeLength );
		FUNC0( "    table length: %7i\n", vm->instructionPointersLength );
		FUNC0( "    data length : %7i\n", vm->dataMask + 1 );
	}
}