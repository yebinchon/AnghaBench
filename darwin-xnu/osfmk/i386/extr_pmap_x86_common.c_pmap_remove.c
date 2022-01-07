
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_t ;
typedef int addr64_t ;


 int PMAP_OPTIONS_REMOVE ;
 int pmap_remove_options (int ,int ,int ,int ) ;

void
pmap_remove(
 pmap_t map,
 addr64_t s64,
 addr64_t e64)
{
 pmap_remove_options(map, s64, e64, PMAP_OPTIONS_REMOVE);
}
