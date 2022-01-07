
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int KS_INC (int ) ;
 int KS_ZERO_COUNT ;
 int memset (void*,int ,scalar_t__) ;

void Zero(void *addr, UINT size)
{

 if (addr == ((void*)0) || size == 0)
 {
  return;
 }


 KS_INC(KS_ZERO_COUNT);

 memset(addr, 0, size);
}
