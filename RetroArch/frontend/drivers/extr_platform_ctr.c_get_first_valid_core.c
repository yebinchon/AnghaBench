
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char const* d_name; } ;
typedef int DIR ;


 int closedir (int *) ;
 scalar_t__ envIsHomebrew () ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int strcat (char*,char*) ;
 int strcmp (char const*,char const*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void get_first_valid_core(char* path_return)
{
   DIR* dir;
   struct dirent* ent;
   const char* extension = envIsHomebrew() ? ".3dsx" : ".cia";

   path_return[0] = '\0';

   dir = opendir("sdmc:/retroarch/cores");
   if (dir != ((void*)0))
   {
      while (ent = readdir(dir))
      {
         if (ent == ((void*)0))
            break;
         if (strlen(ent->d_name) > strlen(extension) && !strcmp(ent->d_name + strlen(ent->d_name) - strlen(extension), extension))
         {
            strcpy(path_return, "sdmc:/retroarch/cores");
            strcat(path_return, "/");
            strcat(path_return, ent->d_name);
            break;
         }
      }
      closedir(dir);
   }
}
