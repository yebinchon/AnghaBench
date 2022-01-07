
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_OPEN_FILES ;
 scalar_t__ __ps2_fd_drop (int *) ;
 int ** __ps2_fdmap ;
 int _lock () ;
 int _unlock () ;
 scalar_t__ is_fd_valid (int) ;

int __ps2_release_descriptor(int fd)
{
   int res = -1;

   if (is_fd_valid(fd) && __ps2_fd_drop(__ps2_fdmap[MAX_OPEN_FILES - fd]) >= 0)
   {
      _lock();

      fd = MAX_OPEN_FILES - fd;
      __ps2_fdmap[fd] = ((void*)0);
      res = 0;
      _unlock();
   }

   return res;
}
