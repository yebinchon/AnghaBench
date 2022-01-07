
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int backdoor_fn ;


 scalar_t__ k_write_kaddr ;
 int svc_7b (int ,int ,int ) ;

__attribute__((used)) static void write_kaddr(u32 kaddr, u32 val)
{
   svc_7b((backdoor_fn)k_write_kaddr, kaddr, val);
}
