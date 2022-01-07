
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iox_dirent_t ;


 int fileXioCDDread (int,int *) ;
 int fileXioDread (int,int *) ;
 scalar_t__ is_fd_valid (int) ;

int ps2fileXioDread(int fd, iox_dirent_t *dirent)
{
   if (is_fd_valid(fd)) {
      return fileXioCDDread(fd, dirent);
   } else {
      return fileXioDread(fd, dirent);
   }
}
