
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static bool __stub_found()
{
 u64 sig = ((u64)(*(u32*)0x80001804) << 32) + *(u32*)0x80001808;
 if (sig == 0x5354554248415858ULL)
  return 1;
 return 0;
}
