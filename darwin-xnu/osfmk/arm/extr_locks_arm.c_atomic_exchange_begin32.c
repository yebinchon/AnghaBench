
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum memory_order { ____Placeholder_memory_order } memory_order ;


 int load_exclusive32 (int *,int) ;

__attribute__((used)) static uint32_t
atomic_exchange_begin32(uint32_t *target, uint32_t *previous, enum memory_order ord)
{
 uint32_t val;

 val = load_exclusive32(target, ord);
 *previous = val;
 return val;
}
