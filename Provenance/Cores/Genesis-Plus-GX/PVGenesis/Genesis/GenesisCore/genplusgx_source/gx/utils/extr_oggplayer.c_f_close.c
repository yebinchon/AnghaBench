
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* mem; scalar_t__ pos; scalar_t__ size; } ;


 int close (int) ;
 TYPE_1__* file ;

__attribute__((used)) static int f_close(int *f)
{
  int d;
  if (*f >= 0x666 && *f <= 0x669)
  {
    d = (*f) - 0x666;
    file[d].size = 0;
    file[d].pos = 0;
    if (file[d].mem)
    {
      file[d].mem = (void *) 0;
    }
    return 0;
  }
  else
    return close(*f);
  return 0;
}
