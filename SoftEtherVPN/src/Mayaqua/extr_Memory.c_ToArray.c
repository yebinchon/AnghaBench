
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 void* ToArrayEx (int *,int) ;

void *ToArray(LIST *o)
{
 return ToArrayEx(o, 0);
}
