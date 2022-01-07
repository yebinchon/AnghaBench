
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 void* MallocEx (int ,int) ;
 int Zero (void*,int ) ;

void *ZeroMallocEx(UINT size, bool zero_clear_when_free)
{
 void *p = MallocEx(size, zero_clear_when_free);
 Zero(p, size);
 return p;
}
