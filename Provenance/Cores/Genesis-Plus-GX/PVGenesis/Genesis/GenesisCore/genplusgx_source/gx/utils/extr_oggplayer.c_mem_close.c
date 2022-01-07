
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;


 int f_close (int*) ;
 TYPE_1__* file ;

__attribute__((used)) static int mem_close(int fd)
{
  if (fd >= 0x666 && fd <= 0x669)
  {
    fd -= 0x666;
    file[fd].size = 0;
    return 0;
  }
  else
    return f_close(&fd);
}
