
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 void* MallocEx (int ,int) ;

void *Malloc(UINT size)
{
 return MallocEx(size, 0);
}
