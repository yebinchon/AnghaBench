
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unm ;
struct utsname {char* release; } ;
typedef int name ;
typedef int cmd ;


 int close (int) ;
 int errno ;
 int fprintf (int ,char*,int,int) ;
 int kernel_version ;
 int manual_rmmod (char*) ;
 int memset (struct utsname*,int ,int) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 int strcpy (char*,char*) ;
 int system (char*) ;
 int uname (struct utsname*) ;
 int warm_fd ;

void warm_finish(void)
{
 char name[32], cmd[64];
 int ret;

 if (warm_fd < 0)
  return;

 close(warm_fd);
 warm_fd = -1;

 if (kernel_version < 0x26) {
  struct utsname unm;
  memset(&unm, 0, sizeof(unm));
  uname(&unm);
  snprintf(name, sizeof(name), "warm_%s", unm.release);
 }
 else
  strcpy(name, "warm");

 snprintf(cmd, sizeof(cmd), "/sbin/rmmod %s", name);
 ret = system(cmd);
 if (ret != 0) {
  fprintf(stderr, "system/rmmod failed: %d %d\n", ret, errno);
  manual_rmmod(name);
 }
}
