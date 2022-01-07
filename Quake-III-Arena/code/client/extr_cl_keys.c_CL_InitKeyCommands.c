
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_AddCommand (char*,int ) ;
 int Key_Bind_f ;
 int Key_Bindlist_f ;
 int Key_Unbind_f ;
 int Key_Unbindall_f ;

void CL_InitKeyCommands( void ) {

 Cmd_AddCommand ("bind",Key_Bind_f);
 Cmd_AddCommand ("unbind",Key_Unbind_f);
 Cmd_AddCommand ("unbindall",Key_Unbindall_f);
 Cmd_AddCommand ("bindlist",Key_Bindlist_f);
}
