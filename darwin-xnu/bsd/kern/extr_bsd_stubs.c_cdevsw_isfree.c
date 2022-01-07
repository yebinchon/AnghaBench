
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdevsw {int dummy; } ;


 struct cdevsw* cdevsw ;
 scalar_t__ memcmp (char*,char*,int) ;
 int nchrdev ;
 int nocdev ;

int
cdevsw_isfree(int index)
{
 struct cdevsw * devsw;

 if (index < 0) {
  if (index == -1)
   index = 0;
  else
   index = -index;
  devsw = &cdevsw[index];
  for (; index < nchrdev; index++, devsw++) {
   if (memcmp((char *)devsw, (char *)&nocdev, sizeof(struct cdevsw)) == 0)
    break;
  }
 }

 if (index < 0 || index >= nchrdev)
  return (-1);

 devsw = &cdevsw[index];
 if ((memcmp((char *)devsw, (char *)&nocdev, sizeof(struct cdevsw)) != 0)) {
  return (-1);
 }
 return (index);
}
