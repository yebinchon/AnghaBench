
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERFINDEX_SUCCESS ;
 int VERIFY (int,char*) ;
 int asprintf (char**,char*,char*) ;
 int free (char*) ;
 int system (char*) ;

int cleanup_ram_volume(char* path) {
  char *cmd;
  int retval;

  retval = asprintf(&cmd, "umount -f '%s' >/dev/null", path);
  VERIFY(retval > 0, "asprintf failed");

  retval = system(cmd);
  VERIFY(retval == 0, "diskutil command failed");

  free(cmd);

  return PERFINDEX_SUCCESS;
}
