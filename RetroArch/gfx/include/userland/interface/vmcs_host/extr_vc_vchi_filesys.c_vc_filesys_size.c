
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_END ;
 int VC_O_RDONLY ;
 int vc_filesys_close (int) ;
 int vc_filesys_lseek (int,int ,int ) ;
 int vc_filesys_open (char const*,int ) ;

int vc_filesys_size(const char *path)
{
   int fd;
   int end_pos = 0;
   int success = -1;
   if((fd = vc_filesys_open(path, VC_O_RDONLY)) == 0)
   {
      end_pos = vc_filesys_lseek(fd, 0, SEEK_END);
      success = vc_filesys_close(fd);
      (void)success;
   }

   return end_pos;
}
