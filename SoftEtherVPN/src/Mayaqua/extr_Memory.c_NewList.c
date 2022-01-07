
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;
typedef int COMPARE ;


 int * NewListEx (int *,int) ;

LIST *NewList(COMPARE *cmp)
{
 return NewListEx(cmp, 0);
}
