
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;
typedef int COMPARE ;


 int * NewListEx2 (int *,int,int) ;

LIST *NewListEx(COMPARE *cmp, bool fast)
{
 return NewListEx2(cmp, fast, 0);
}
