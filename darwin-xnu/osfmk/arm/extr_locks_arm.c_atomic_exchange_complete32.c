
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum memory_order { ____Placeholder_memory_order } memory_order ;
typedef int boolean_t ;


 int store_exclusive32 (int *,int ,int) ;

__attribute__((used)) static boolean_t
atomic_exchange_complete32(uint32_t *target, uint32_t previous, uint32_t newval, enum memory_order ord)
{
 (void)previous;
 return store_exclusive32(target, newval, ord);
}
