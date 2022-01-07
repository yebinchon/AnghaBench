
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_t ;


 int pmap_set_nested_internal (int ) ;

void
pmap_set_nested(
 pmap_t pmap)
{
 pmap_set_nested_internal(pmap);
}
