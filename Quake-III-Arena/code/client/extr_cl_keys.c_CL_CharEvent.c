
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keyCatchers; scalar_t__ state; } ;


 scalar_t__ CA_DISCONNECTED ;
 int Field_CharEvent (int *,int) ;
 int KEYCATCH_CONSOLE ;
 int KEYCATCH_MESSAGE ;
 int KEYCATCH_UI ;
 int K_CHAR_FLAG ;
 int UI_KEY_EVENT ;
 int VM_Call (int ,int ,int,int ) ;
 int chatField ;
 TYPE_1__ cls ;
 int g_consoleField ;
 int qtrue ;
 int uivm ;

void CL_CharEvent( int key ) {

 if ( key == '`' || key == '~' ) {
  return;
 }


 if ( cls.keyCatchers & KEYCATCH_CONSOLE )
 {
  Field_CharEvent( &g_consoleField, key );
 }
 else if ( cls.keyCatchers & KEYCATCH_UI )
 {
  VM_Call( uivm, UI_KEY_EVENT, key | K_CHAR_FLAG, qtrue );
 }
 else if ( cls.keyCatchers & KEYCATCH_MESSAGE )
 {
  Field_CharEvent( &chatField, key );
 }
 else if ( cls.state == CA_DISCONNECTED )
 {
  Field_CharEvent( &g_consoleField, key );
 }
}
