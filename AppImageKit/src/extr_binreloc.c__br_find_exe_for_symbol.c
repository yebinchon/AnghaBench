
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int BrInitError ;


 int BR_INIT_ERROR_DISABLED ;
 int SIZE ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 scalar_t__ realloc (char*,size_t) ;
 int sscanf (char*,char*,void**) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;
 int * strstr (char*,char*) ;

__attribute__((used)) static char *
_br_find_exe_for_symbol (const void *symbol, BrInitError *error)
{

 if (error)
  *error = BR_INIT_ERROR_DISABLED;
 return (char *) ((void*)0);
}
