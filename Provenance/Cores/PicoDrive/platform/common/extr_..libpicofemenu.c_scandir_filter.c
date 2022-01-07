
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_type; int * d_name; } ;


 scalar_t__ DT_DIR ;
 char** filter_exts_internal ;
 scalar_t__ strcasecmp (char const*,char const*) ;
 char* strrchr (int *,char) ;

__attribute__((used)) static int scandir_filter(const struct dirent *ent)
{
 const char **filter = filter_exts_internal;
 const char *ext;
 int i;

 if (ent == ((void*)0) || ent->d_name == ((void*)0))
  return 0;

 if (ent->d_type == DT_DIR)
  return 1;

 ext = strrchr(ent->d_name, '.');
 if (ext == ((void*)0))
  return 0;

 ext++;
 for (i = 0; filter[i] != ((void*)0); i++)
  if (strcasecmp(ext, filter[i]) == 0)
   return 1;

 return 0;
}
