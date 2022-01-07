
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; } ;


 TYPE_1__* file ;
 int lseek (int,int ,int) ;

__attribute__((used)) static long f_tell(int *f)
{
  int k, d;

  if (*f >= 0x666 && *f <= 0x669)
  {
    d = (*f) - 0x666;
    k = file[d].pos;
  }
  else
    k = lseek(*f, 0, 1);

  return (long) k;
}
