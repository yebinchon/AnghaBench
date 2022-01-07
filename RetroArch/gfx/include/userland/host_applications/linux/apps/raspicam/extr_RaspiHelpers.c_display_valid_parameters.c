
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int print_app_details (int ) ;
 int raspicamcontrol_display_help () ;
 int raspicommonsettings_display_help () ;
 int raspipreview_display_help () ;
 int stdout ;
 void stub1 (char*) ;

void display_valid_parameters(char *name, void (*app_help)(char*))
{
   print_app_details(stdout);


   if (app_help)
      (*app_help)(name);


   raspicommonsettings_display_help();


   raspipreview_display_help();


   raspicamcontrol_display_help();

   fprintf(stdout, "\n");
}
