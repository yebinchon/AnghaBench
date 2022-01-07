
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 int PERFINDEX_SUCCESS ;
 int VERIFY (int,char*) ;
 int asprintf (char**,char*,char const*) ;
 int free (char*) ;
 int snprintf (char*,int ,char*,char const*) ;
 int system (char*) ;

int setup_ram_volume(const char* name, char* path) {
  char *cmd;
  int retval;

  retval = asprintf(&cmd, "diskutil erasevolume HFS+ '%s' `hdiutil attach -nomount ram://1500000` >/dev/null", name);
  VERIFY(retval > 0, "asprintf failed");

  retval = system(cmd);
  VERIFY(retval == 0, "diskutil command failed");

  snprintf(path, MAXPATHLEN, "/Volumes/%s", name);

  free(cmd);

  return PERFINDEX_SUCCESS;
}
