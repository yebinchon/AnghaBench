
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vmInterpret_t ;
struct TYPE_2__ {scalar_t__ state; int uiStarted; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_AUTHORIZING ;
 int CL_UISystemCalls ;
 int Com_Error (int ,char*,...) ;
 int Cvar_VariableValue (char*) ;
 int ERR_DROP ;
 int ERR_FATAL ;
 int UI_API_VERSION ;
 int UI_GETAPIVERSION ;
 int UI_INIT ;
 int UI_OLD_API_VERSION ;
 int VMI_COMPILED ;
 int VM_Call (int ,int ,...) ;
 int VM_Create (char*,int ,int ) ;
 scalar_t__ cl_connectedToPureServer ;
 TYPE_1__ cls ;
 int qfalse ;
 int uivm ;

void CL_InitUI( void ) {
 int v;
 vmInterpret_t interpret;


 if ( cl_connectedToPureServer != 0 ) {

  interpret = VMI_COMPILED;
 }
 else {
  interpret = Cvar_VariableValue( "vm_ui" );
 }
 uivm = VM_Create( "ui", CL_UISystemCalls, interpret );
 if ( !uivm ) {
  Com_Error( ERR_FATAL, "VM_Create on UI failed" );
 }


 v = VM_Call( uivm, UI_GETAPIVERSION );
 if (v == UI_OLD_API_VERSION) {


  VM_Call( uivm, UI_INIT, (cls.state >= CA_AUTHORIZING && cls.state < CA_ACTIVE));
 }
 else if (v != UI_API_VERSION) {
  Com_Error( ERR_DROP, "User Interface is version %d, expected %d", v, UI_API_VERSION );
  cls.uiStarted = qfalse;
 }
 else {

  VM_Call( uivm, UI_INIT, (cls.state >= CA_AUTHORIZING && cls.state < CA_ACTIVE) );
 }
}
