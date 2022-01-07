
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_t ;


 int pmap_insert_sharedpage_internal (int ) ;

void
pmap_insert_sharedpage(
 pmap_t pmap)
{
 pmap_insert_sharedpage_internal(pmap);
}
