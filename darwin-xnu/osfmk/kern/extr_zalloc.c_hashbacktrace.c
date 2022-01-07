
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int assert (int) ;
 uintptr_t hash_mix (uintptr_t) ;

uint32_t
hashbacktrace(uintptr_t* bt, uint32_t depth, uint32_t max_size)
{

 uintptr_t hash = 0;
 uintptr_t mask = max_size - 1;

 while (depth) {
  hash += bt[--depth];
 }

 hash = hash_mix(hash) & mask;

 assert(hash < max_size);

 return (uint32_t) hash;
}
