
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int crand_next ;

__attribute__((used)) static __inline__ void __card_srand(u32 val)
{
 crand_next = val;
}
