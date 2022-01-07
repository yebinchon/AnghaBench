
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmdline_commands ;
 int cmdline_commands_size ;
 int fprintf (int ,char*,...) ;
 int raspicli_display_help (int ,int ) ;
 int stdout ;

__attribute__((used)) static void application_help_message(char *app_name)
{
   fprintf(stdout, "Runs camera for specific time, and take uncompressed YUV or RGB capture at end if requested\n\n");
   fprintf(stdout, "usage: %s [options]\n\n", app_name);

   fprintf(stdout, "Image parameter commands\n\n");

   raspicli_display_help(cmdline_commands, cmdline_commands_size);

   return;
}
