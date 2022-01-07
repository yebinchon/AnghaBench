
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unm ;
struct utsname {char* release; } ;
typedef int buff2 ;
typedef int buff1 ;


 int O_RDWR ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int kernel_version ;
 int manual_insmod_26 (char*,char*) ;
 int memset (struct utsname*,int ,int) ;
 scalar_t__ open (char*,int ) ;
 int snprintf (char*,int,char*,...) ;
 int stderr ;
 int strlen (char*) ;
 int system (char*) ;
 int uname (struct utsname*) ;
 scalar_t__ warm_fd ;

int warm_init(void)
{
 struct utsname unm;
 char buff1[32], buff2[128];
 int ret;

 memset(&unm, 0, sizeof(unm));
 uname(&unm);

 if (strlen(unm.release) < 3 || unm.release[1] != '.') {
  fprintf(stderr, "unexpected version string: %s\n", unm.release);
  goto fail;
 }
 kernel_version = ((unm.release[0] - '0') << 4) | (unm.release[2] - '0');

 warm_fd = open("/proc/warm", O_RDWR);
 if (warm_fd >= 0)
  return 0;

 snprintf(buff1, sizeof(buff1), "warm_%s.%s", unm.release, kernel_version >= 0x26 ? "ko" : "o");
 snprintf(buff2, sizeof(buff2), "/sbin/insmod %s verbose=1", buff1);


 ret = system(buff2);
 if (ret != 0) {
  fprintf(stderr, "system/insmod failed: %d %d\n", ret, errno);
  if (kernel_version >= 0x26) {
   ret = manual_insmod_26(buff1, "verbose=1");
   if (ret != 0)
    fprintf(stderr, "manual insmod also failed: %d\n", ret);
  }
 }

 warm_fd = open("/proc/warm", O_RDWR);
 if (warm_fd >= 0)
  return 0;

fail:
 fprintf(stderr, "wARM: can't init, acting as sys_cacheflush wrapper\n");
 return -1;
}
