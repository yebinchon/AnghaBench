
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 k_write_kaddr(u32* kaddr, u32 val)
{
   *kaddr = val;
   return 0;
}
