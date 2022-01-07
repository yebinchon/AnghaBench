
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* systemCall ) (int*) ;scalar_t__ dataBase; int name; scalar_t__ dllHandle; } ;
typedef TYPE_1__ vm_t ;
struct TYPE_9__ {scalar_t__ vmMagic; int bssLength; int dataLength; int litLength; scalar_t__ codeLength; int dataOffset; } ;
typedef TYPE_2__ vmHeader_t ;
typedef int name ;
typedef int filename ;
typedef int byte ;


 int Com_Error (int ,char*,...) ;
 int Com_Memcpy (scalar_t__,int *,int) ;
 int Com_Memset (scalar_t__,int ,int) ;
 int Com_Printf (char*,char*) ;
 int Com_sprintf (char*,int,char*,int ) ;
 int ERR_DROP ;
 int ERR_FATAL ;
 int FS_FreeFile (TYPE_2__*) ;
 int FS_ReadFile (char*,void**) ;
 int LittleLong (int) ;
 int MAX_QPATH ;
 int Q_strncpyz (char*,int ,int) ;
 int VMI_NATIVE ;
 TYPE_1__* VM_Create (char*,int (*) (int*),int ) ;
 int VM_Free (TYPE_1__*) ;
 scalar_t__ VM_MAGIC ;

vm_t *VM_Restart( vm_t *vm ) {
 vmHeader_t *header;
 int length;
 int dataLength;
 int i;
 char filename[MAX_QPATH];


 if ( vm->dllHandle ) {
  char name[MAX_QPATH];
     int (*systemCall)( int *parms );

  systemCall = vm->systemCall;
  Q_strncpyz( name, vm->name, sizeof( name ) );

  VM_Free( vm );

  vm = VM_Create( name, systemCall, VMI_NATIVE );
  return vm;
 }


 Com_Printf( "VM_Restart()\n", filename );
 Com_sprintf( filename, sizeof(filename), "vm/%s.qvm", vm->name );
 Com_Printf( "Loading vm file %s.\n", filename );
 length = FS_ReadFile( filename, (void **)&header );
 if ( !header ) {
  Com_Error( ERR_DROP, "VM_Restart failed.\n" );
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


 Com_Memset( vm->dataBase, 0, dataLength );


 Com_Memcpy( vm->dataBase, (byte *)header + header->dataOffset, header->dataLength + header->litLength );


 for ( i = 0 ; i < header->dataLength ; i += 4 ) {
  *(int *)(vm->dataBase + i) = LittleLong( *(int *)(vm->dataBase + i ) );
 }


 FS_FreeFile( header );

 return vm;
}
