#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int (* systemCall ) (int*) ;int dataMask; int instructionPointersLength; scalar_t__ codeLength; int programStack; scalar_t__ stackBottom; int /*<<< orphan*/  compiled; void* instructionPointers; void* dataBase; int /*<<< orphan*/ * name; scalar_t__ dllHandle; int /*<<< orphan*/  entryPoint; int /*<<< orphan*/  fqpath; } ;
typedef  TYPE_1__ vm_t ;
typedef  scalar_t__ vmInterpret_t ;
struct TYPE_13__ {scalar_t__ vmMagic; int bssLength; int dataLength; int litLength; scalar_t__ codeLength; int dataOffset; int instructionCount; } ;
typedef  TYPE_2__ vmHeader_t ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (char*,void**) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int FUNC9 (int) ; 
 int MAX_QPATH ; 
 int MAX_VM ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ STACK_SIZE ; 
 scalar_t__ FUNC12 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ VMI_COMPILED ; 
 scalar_t__ VMI_NATIVE ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  VM_DllSyscall ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ VM_MAGIC ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  h_high ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__* vmTable ; 

vm_t *FUNC17( const char *module, int (*systemCalls)(int *), 
				vmInterpret_t interpret ) {
	vm_t		*vm;
	vmHeader_t	*header;
	int			length;
	int			dataLength;
	int			i, remaining;
	char		filename[MAX_QPATH];

	if ( !module || !module[0] || !systemCalls ) {
		FUNC0( ERR_FATAL, "VM_Create: bad parms" );
	}

	remaining = FUNC8();

	// see if we already have the VM
	for ( i = 0 ; i < MAX_VM ; i++ ) {
		if (!FUNC10(vmTable[i].name, module)) {
			vm = &vmTable[i];
			return vm;
		}
	}

	// find a free vm
	for ( i = 0 ; i < MAX_VM ; i++ ) {
		if ( !vmTable[i].name[0] ) {
			break;
		}
	}

	if ( i == MAX_VM ) {
		FUNC0( ERR_FATAL, "VM_Create: no free vm_t" );
	}

	vm = &vmTable[i];

	FUNC11( vm->name, module, sizeof( vm->name ) );
	vm->systemCall = systemCalls;

	// never allow dll loading with a demo
	if ( interpret == VMI_NATIVE ) {
		if ( FUNC4( "fs_restrict" ) ) {
			interpret = VMI_COMPILED;
		}
	}

	if ( interpret == VMI_NATIVE ) {
		// try to load as a system dll
		FUNC2( "Loading dll file %s.\n", vm->name );
		vm->dllHandle = FUNC12( module, vm->fqpath , &vm->entryPoint, VM_DllSyscall );
		if ( vm->dllHandle ) {
			return vm;
		}

		FUNC2( "Failed to load dll, looking for qvm.\n" );
		interpret = VMI_COMPILED;
	}

	// load the image
	FUNC3( filename, sizeof(filename), "vm/%s.qvm", vm->name );
	FUNC2( "Loading vm file %s.\n", filename );
	length = FUNC6( filename, (void **)&header );
	if ( !header ) {
		FUNC2( "Failed.\n" );
		FUNC14( vm );
		return NULL;
	}

	// byte swap the header
	for ( i = 0 ; i < sizeof( *header ) / 4 ; i++ ) {
		((int *)header)[i] = FUNC9( ((int *)header)[i] );
	}

	// validate
	if ( header->vmMagic != VM_MAGIC
		|| header->bssLength < 0 
		|| header->dataLength < 0 
		|| header->litLength < 0 
		|| header->codeLength <= 0 ) {
		FUNC14( vm );
		FUNC0( ERR_FATAL, "%s has bad header", filename );
	}

	// round up to next power of 2 so all data operations can
	// be mask protected
	dataLength = header->dataLength + header->litLength + header->bssLength;
	for ( i = 0 ; dataLength > ( 1 << i ) ; i++ ) {
	}
	dataLength = 1 << i;

	// allocate zero filled space for initialized and uninitialized data
	vm->dataBase = FUNC7( dataLength, h_high );
	vm->dataMask = dataLength - 1;

	// copy the intialized data
	FUNC1( vm->dataBase, (byte *)header + header->dataOffset, header->dataLength + header->litLength );

	// byte swap the longs
	for ( i = 0 ; i < header->dataLength ; i += 4 ) {
		*(int *)(vm->dataBase + i) = FUNC9( *(int *)(vm->dataBase + i ) );
	}

	// allocate space for the jump targets, which will be filled in by the compile/prep functions
	vm->instructionPointersLength = header->instructionCount * 4;
	vm->instructionPointers = FUNC7( vm->instructionPointersLength, h_high );

	// copy or compile the instructions
	vm->codeLength = header->codeLength;

	if ( interpret >= VMI_COMPILED ) {
		vm->compiled = qtrue;
		FUNC13( vm, header );
	} else {
		vm->compiled = qfalse;
		FUNC16( vm, header );
	}

	// free the original file
	FUNC5( header );

	// load the map file
	FUNC15( vm );

	// the stack is implicitly at the end of the image
	vm->programStack = vm->dataMask + 1;
	vm->stackBottom = vm->programStack - STACK_SIZE;

	FUNC2("%s loaded in %d bytes on the hunk\n", module, remaining - FUNC8());

	return vm;
}