
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ps2_release_descriptor (int) ;
 int fileXioDclose (int) ;
 scalar_t__ is_fd_valid (int) ;

int ps2fileXioDclose(int fd)
{
   int ret = -19;
   if (is_fd_valid(fd)) {
      ret = __ps2_release_descriptor(fd);
   } else if (fd > 0) {
      ret = fileXioDclose(fd);
   }

   return ret;
}
