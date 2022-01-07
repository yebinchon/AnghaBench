
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_len; scalar_t__ l_pid; scalar_t__ l_start; int l_whence; int l_type; } ;
typedef int flock ;


 int F_GETLK ;
 int F_WRLCK ;
 int O_RDONLY ;
 int SEEK_SET ;
 int errno ;
 int fcntl (int,int ,struct flock*) ;
 int memset (struct flock*,int ,int) ;
 int open (char const*,int ) ;
 int printf (char*,char*,char const*,char*) ;
 char* strerror (int ) ;

int vcfiled_is_running(const char *filename)
{
   int ret;

   int fd = open(filename, O_RDONLY);
   if (fd < 0)
   {

      ret = 0;
   }

   else
   {
      struct flock flock;
      memset(&flock, 0, sizeof(flock));
      flock.l_type = F_WRLCK;
      flock.l_whence = SEEK_SET;
      flock.l_start = 0;
      flock.l_len = 1;
      int rc = fcntl(fd, F_GETLK, &flock);
      if (rc != 0)
      {

         printf("%s: Could not access lockfile %s: %s\n",
            "vmcs_main", filename, strerror(errno));
         ret = 0;
      }
      else if (flock.l_pid == 0)
      {

         ret = 0;
      }
      else
      {

         ret = 1;
      }
   }

   return ret;
}
