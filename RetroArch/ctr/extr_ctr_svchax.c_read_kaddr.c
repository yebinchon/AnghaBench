
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int backdoor_fn ;


 scalar_t__ k_read_kaddr ;
 int svc_7b (int ,int ) ;

__attribute__((used)) static u32 read_kaddr(u32 kaddr)
{
   return svc_7b((backdoor_fn)k_read_kaddr, kaddr);
}
