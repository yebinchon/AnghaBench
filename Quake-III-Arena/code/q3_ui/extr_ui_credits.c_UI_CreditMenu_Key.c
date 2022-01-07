
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sfxHandle_t ;


 int EXEC_APPEND ;
 int K_CHAR_FLAG ;
 int trap_Cmd_ExecuteText (int ,char*) ;

__attribute__((used)) static sfxHandle_t UI_CreditMenu_Key( int key ) {
 if( key & K_CHAR_FLAG ) {
  return 0;
 }

 trap_Cmd_ExecuteText( EXEC_APPEND, "quit\n" );
 return 0;
}
