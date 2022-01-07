
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* DeInit ) () ;} ;


 TYPE_1__* CurPer ;
 int printf (char*,int) ;
 int stub1 () ;
 int testspassed ;

void cleanup(void)
{
 if (CurPer)
 {
      CurPer->DeInit();
      testspassed++;
  printf("Test Score: %d/11 \n", testspassed);
 }
}
