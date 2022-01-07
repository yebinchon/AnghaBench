
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmdline_commands ;
 int cmdline_commands_size ;
 int fprintf (int ,char*) ;
 int raspicli_display_help (int ,int ) ;
 int stdout ;

void raspicommonsettings_display_help()
{
   fprintf(stdout, "\nCommon Settings commands\n\n");
   raspicli_display_help(cmdline_commands, cmdline_commands_size);
}
