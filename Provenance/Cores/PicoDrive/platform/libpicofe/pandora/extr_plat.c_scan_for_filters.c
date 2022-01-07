
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dirent {scalar_t__ d_type; scalar_t__ d_name; } ;
typedef int mfilters ;
typedef int buff ;
struct TYPE_2__ {char const** hwfilters; } ;
typedef int DIR ;


 scalar_t__ DT_LNK ;
 scalar_t__ DT_REG ;
 char** calloc (int,int) ;
 int closedir (int *) ;
 scalar_t__ errno ;
 int * opendir (char*) ;
 int perror (char*) ;
 TYPE_1__ plat_target ;
 struct dirent* readdir (int *) ;
 int rewinddir (int *) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 char* strdup (char*) ;
 size_t strlen (scalar_t__) ;
 int strncpy (char*,scalar_t__,size_t) ;

__attribute__((used)) static void scan_for_filters(void)
{
 struct dirent *ent;
 int i, count = 0;
 const char **mfilters;
 char buff[64];
 DIR *dir;

 dir = opendir("/etc/pandora/conf/dss_fir");
 if (dir == ((void*)0)) {
  perror("filter opendir");
  return;
 }

 while (1) {
  errno = 0;
  ent = readdir(dir);
  if (ent == ((void*)0)) {
   if (errno != 0)
    perror("readdir");
   break;
  }

  if (ent->d_type != DT_REG && ent->d_type != DT_LNK)
   continue;

  count++;
 }

 if (count == 0)
  return;

 mfilters = calloc(count + 1, sizeof(mfilters[0]));
 if (mfilters == ((void*)0))
  return;

 rewinddir(dir);
 for (i = 0; (ent = readdir(dir)); ) {
  size_t len;

  if (ent->d_type != DT_REG && ent->d_type != DT_LNK)
   continue;

  len = strlen(ent->d_name);


  if (len >= 3 && strcmp(ent->d_name + len - 3, "_v3") == 0)
   continue;
  if (len >= 3 && strcmp(ent->d_name + len - 3, "_v5") == 0)
   continue;


  if (len > 5 && strcmp(ent->d_name + len - 5, "_up_h") == 0)
   len -= 5;

  if (len > sizeof(buff) - 1)
   continue;

  strncpy(buff, ent->d_name, len);
  buff[len] = 0;
  mfilters[i] = strdup(buff);
  if (mfilters[i] != ((void*)0))
   i++;
 }
 closedir(dir);

 plat_target.hwfilters = mfilters;
}
