
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int pmap_t ;
typedef int addr64_t ;


 int pmap_trim_internal (int ,int ,int ,int ,int ) ;

void
pmap_trim(
 pmap_t grand,
 pmap_t subord,
 addr64_t vstart,
 addr64_t nstart,
 uint64_t size)
{
 pmap_trim_internal(grand, subord, vstart, nstart, size);
}
