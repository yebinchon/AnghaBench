
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int RARCH_WARN (char*) ;
 int fcntl (int,int ,...) ;

__attribute__((used)) static void oss_set_nonblock_state(void *data, bool state)
{
   int rc;
   int *fd = (int*)data;

   if (state)
      rc = fcntl(*fd, F_SETFL, fcntl(*fd, F_GETFL) | O_NONBLOCK);
   else
      rc = fcntl(*fd, F_SETFL, fcntl(*fd, F_GETFL) & (~O_NONBLOCK));
   if (rc != 0)
      RARCH_WARN("Could not set nonblocking on OSS file descriptor. Will not be able to fast-forward.\n");
}
