
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int (* systemCall ) (int*) ;int dataMask; int instructionPointersLength; scalar_t__ codeLength; int programStack; scalar_t__ stackBottom; int compiled; void* instructionPointers; void* dataBase; int * name; scalar_t__ dllHandle; int entryPoint; int fqpath; } ;
typedef TYPE_1__ vm_t ;
typedef scalar_t__ vmInterpret_t ;
struct TYPE_13__ {scalar_t__ vmMagic; int bssLength; int dataLength; int litLength; scalar_t__ codeLength; int dataOffset; int instructionCount; } ;
typedef TYPE_2__ vmHeader_t ;
typedef int filename ;
typedef int byte ;


 int Com_Error (int ,char*,...) ;
 int Com_Memcpy (void*,int *,int) ;
 int Com_Printf (char*,...) ;
 int Com_sprintf (char*,int,char*,int *) ;
 scalar_t__ Cvar_VariableValue (char*) ;
 int ERR_FATAL ;
 int FS_FreeFile (TYPE_2__*) ;
 int FS_ReadFile (char*,void**) ;
 void* Hunk_Alloc (int,int ) ;
 int Hunk_MemoryRemaining () ;
 int LittleLong (int) ;
 int MAX_QPATH ;
 int MAX_VM ;
 int Q_stricmp (int *,char const*) ;
 int Q_strncpyz (int *,char const*,int) ;
 scalar_t__ STACK_SIZE ;
 scalar_t__ Sys_LoadDll (char const*,int ,int *,int ) ;
 scalar_t__ VMI_COMPILED ;
 scalar_t__ VMI_NATIVE ;
 int VM_Compile (TYPE_1__*,TYPE_2__*) ;
 int VM_DllSyscall ;
 int VM_Free (TYPE_1__*) ;
 int VM_LoadSymbols (TYPE_1__*) ;
 scalar_t__ VM_MAGIC ;
 int VM_PrepareInterpreter (TYPE_1__*,TYPE_2__*) ;
 int h_high ;
 int qfalse ;
 int qtrue ;
 TYPE_1__* vmTable ;

vm_t *VM_Create( const char *module, int (*systemCalls)(int *),
    vmInterpret_t interpret ) {
 vm_t *vm;
 vmHeader_t *header;
 int length;
 int dataLength;
 int i, remaining;
 char filename[MAX_QPATH];

 if ( !module || !module[0] || !systemCalls ) {
  Com_Error( ERR_FATAL, "VM_Create: bad parms" );
 }

 remaining = Hunk_MemoryRemaining();


 for ( i = 0 ; i < MAX_VM ; i++ ) {
  if (!Q_stricmp(vmTable[i].name, module)) {
   vm = &vmTable[i];
   return vm;
  }
 }


 for ( i = 0 ; i < MAX_VM ; i++ ) {
  if ( !vmTable[i].name[0] ) {
   break;
  }
 }

 if ( i == MAX_VM ) {
  Com_Error( ERR_FATAL, "VM_Create: no free vm_t" );
 }

 vm = &vmTable[i];

 Q_strncpyz( vm->name, module, sizeof( vm->name ) );
 vm->systemCall = systemCalls;


 if ( interpret == VMI_NATIVE ) {
  if ( Cvar_VariableValue( "fs_restrict" ) ) {
   interpret = VMI_COMPILED;
  }
 }

 if ( interpret == VMI_NATIVE ) {

  Com_Printf( "Loading dll file %s.\n", vm->name );
  vm->dllHandle = Sys_LoadDll( module, vm->fqpath , &vm->entryPoint, VM_DllSyscall );
  if ( vm->dllHandle ) {
   return vm;
  }

  Com_Printf( "Failed to load dll, looking for qvm.\n" );
  interpret = VMI_COMPILED;
 }


 Com_sprintf( filename, sizeof(filename), "vm/%s.qvm", vm->name );
 Com_Printf( "Loading vm file %s.\n", filename );
 length = FS_ReadFile( filename, (void **)&header );
 if ( !header ) {
  Com_Printf( "Failed.\n" );
  VM_Free( vm );
  return ((void*)0);
 }


 for ( i = 0 ; i < sizeof( *header ) / 4 ; i++ ) {
  ((int *)header)[i] = LittleLong( ((int *)header)[i] );
 }


 if ( header->vmMagic != VM_MAGIC
  || header->bssLength < 0
  || header->dataLength < 0
  || header->litLength < 0
  || header->codeLength <= 0 ) {
  VM_Free( vm );
  Com_Error( ERR_FATAL, "%s has bad header", filename );
 }



 dataLength = header->dataLength + header->litLength + header->bssLength;
 for ( i = 0 ; dataLength > ( 1 << i ) ; i++ ) {
 }
 dataLength = 1 << i;


 vm->dataBase = Hunk_Alloc( dataLength, h_high );
 vm->dataMask = dataLength - 1;


 Com_Memcpy( vm->dataBase, (byte *)header + header->dataOffset, header->dataLength + header->litLength );


 for ( i = 0 ; i < header->dataLength ; i += 4 ) {
  *(int *)(vm->dataBase + i) = LittleLong( *(int *)(vm->dataBase + i ) );
 }


 vm->instructionPointersLength = header->instructionCount * 4;
 vm->instructionPointers = Hunk_Alloc( vm->instructionPointersLength, h_high );


 vm->codeLength = header->codeLength;

 if ( interpret >= VMI_COMPILED ) {
  vm->compiled = qtrue;
  VM_Compile( vm, header );
 } else {
  vm->compiled = qfalse;
  VM_PrepareInterpreter( vm, header );
 }


 FS_FreeFile( header );


 VM_LoadSymbols( vm );


 vm->programStack = vm->dataMask + 1;
 vm->stackBottom = vm->programStack - STACK_SIZE;

 Com_Printf("%s loaded in %d bytes on the hunk\n", module, remaining - Hunk_MemoryRemaining());

 return vm;
}
