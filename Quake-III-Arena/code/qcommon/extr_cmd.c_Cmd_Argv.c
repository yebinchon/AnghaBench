
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int cmd_argc ;
 char** cmd_argv ;

char *Cmd_Argv( int arg ) {
 if ( (unsigned)arg >= cmd_argc ) {
  return "";
 }
 return cmd_argv[arg];
}
