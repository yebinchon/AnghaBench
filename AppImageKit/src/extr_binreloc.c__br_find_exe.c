
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int ssize_t ;
typedef int path ;
typedef int FILE ;
typedef int BrInitError ;


 int BR_INIT_ERROR_DISABLED ;
 int BR_INIT_ERROR_INVALID_MAPS ;
 int BR_INIT_ERROR_NOMEM ;
 int BR_INIT_ERROR_OPEN_MAPS ;
 int BR_INIT_ERROR_READ_MAPS ;
 int PATH_MAX ;
 int SSIZE_MAX ;
 int S_ISLNK (int ) ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int readlink (char*,char*,size_t) ;
 scalar_t__ realloc (char*,size_t) ;
 int stat (char*,struct stat*) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;
 int strncpy (char*,char*,size_t) ;
 int * strstr (char*,char*) ;

__attribute__((used)) static char *
_br_find_exe (BrInitError *error)
{

 if (error)
  *error = BR_INIT_ERROR_DISABLED;
 return ((void*)0);
}
