
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 void* ZeroMallocEx (int ,int) ;

void *ZeroMalloc(UINT size)
{
 return ZeroMallocEx(size, 0);
}
