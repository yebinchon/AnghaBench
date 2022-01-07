
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int dirnoslash ;


 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcat (char*,char*) ;
 int strlen (char const*) ;
 char* strrchr (char*,char) ;

int CheckFile(const char * filepath)
{
   struct stat filestat;
   char *notRoot = ((void*)0);

   if (!filepath)
      return 0;

   char dirnoslash[strlen(filepath)+2];

   snprintf(dirnoslash, sizeof(dirnoslash), "%s", filepath);

   while(dirnoslash[strlen(dirnoslash)-1] == '/')
      dirnoslash[strlen(dirnoslash)-1] = '\0';

   notRoot = strrchr(dirnoslash, '/');
   if (!notRoot)
      strcat(dirnoslash, "/");

   if (stat(dirnoslash, &filestat) == 0)
      return 1;

   return 0;
}
