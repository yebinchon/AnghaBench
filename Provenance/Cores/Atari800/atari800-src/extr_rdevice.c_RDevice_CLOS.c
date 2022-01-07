
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrN ;
 int CPU_regA ;
 int CPU_regY ;
 scalar_t__ bufend ;
 int close (int ) ;
 scalar_t__ concurrent ;
 int rdev_fd ;

void RDevice_CLOS(void)
{
  CPU_regA = 1;
  CPU_regY = 1;
  CPU_ClrN;
  concurrent = 0;
  bufend = 0;
  close(rdev_fd);
}
