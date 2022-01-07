
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* GIT_COMMIT_ID ;
 int TAINTED ;
 char* app_name ;
 char* basename (char*) ;
 int fprintf (int *,char*,char*,char*,int ) ;

void print_app_details(FILE *fd)
{
   if (!app_name)
      app_name = "Un-named";

   fprintf(fd, "\n\"%s\" Camera App (commit %s%s)\n\n", basename(app_name), GIT_COMMIT_ID, TAINTED);
}
