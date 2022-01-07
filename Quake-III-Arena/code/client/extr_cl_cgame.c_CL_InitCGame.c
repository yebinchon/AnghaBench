
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vmInterpret_t ;
struct TYPE_6__ {char* stringData; int* stringOffsets; } ;
struct TYPE_10__ {int mapname; TYPE_1__ gameState; } ;
struct TYPE_9__ {int clientNum; int lastExecutedServerCommand; int serverMessageSequence; } ;
struct TYPE_8__ {int state; } ;
struct TYPE_7__ {int (* EndRegistration ) () ;} ;


 int CA_LOADING ;
 int CA_PRIMED ;
 int CG_INIT ;
 int CL_CgameSystemCalls ;
 size_t CS_SERVERINFO ;
 int Com_Error (int ,char*) ;
 int Com_Printf (char*,int) ;
 int Com_TouchMemory () ;
 int Com_sprintf (int ,int,char*,char const*) ;
 int Con_ClearNotify () ;
 int Con_Close () ;
 int Cvar_VariableValue (char*) ;
 int ERR_DROP ;
 char* Info_ValueForKey (char const*,char*) ;
 int Sys_LowPhysicalMemory () ;
 int Sys_Milliseconds () ;
 int VMI_COMPILED ;
 int VM_Call (int ,int ,int ,int ,int ) ;
 int VM_Create (char*,int ,int ) ;
 int cgvm ;
 TYPE_5__ cl ;
 scalar_t__ cl_connectedToPureServer ;
 TYPE_4__ clc ;
 TYPE_3__ cls ;
 TYPE_2__ re ;
 int stub1 () ;

void CL_InitCGame( void ) {
 const char *info;
 const char *mapname;
 int t1, t2;
 vmInterpret_t interpret;

 t1 = Sys_Milliseconds();


 Con_Close();


 info = cl.gameState.stringData + cl.gameState.stringOffsets[ CS_SERVERINFO ];
 mapname = Info_ValueForKey( info, "mapname" );
 Com_sprintf( cl.mapname, sizeof( cl.mapname ), "maps/%s.bsp", mapname );


 if ( cl_connectedToPureServer != 0 ) {

  interpret = VMI_COMPILED;
 }
 else {
  interpret = Cvar_VariableValue( "vm_cgame" );
 }
 cgvm = VM_Create( "cgame", CL_CgameSystemCalls, interpret );
 if ( !cgvm ) {
  Com_Error( ERR_DROP, "VM_Create on cgame failed" );
 }
 cls.state = CA_LOADING;




 VM_Call( cgvm, CG_INIT, clc.serverMessageSequence, clc.lastExecutedServerCommand, clc.clientNum );



 cls.state = CA_PRIMED;

 t2 = Sys_Milliseconds();

 Com_Printf( "CL_InitCGame: %5.2f seconds\n", (t2-t1)/1000.0 );



 re.EndRegistration();


 if (!Sys_LowPhysicalMemory()) {
  Com_TouchMemory();
 }


 Con_ClearNotify ();
}
