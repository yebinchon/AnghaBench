
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CT ;
typedef int CONSOLE ;


 int CtFreeEx (int *,int *,int) ;

void CtFree(CT *ct, CONSOLE *c)
{
 CtFreeEx(ct, c, 0);
}
