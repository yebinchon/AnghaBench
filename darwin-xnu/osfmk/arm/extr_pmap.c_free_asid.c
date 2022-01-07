
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_MAX_ASID ;
 int MAX_ASID ;
 scalar_t__ asid_bitmap ;
 int assert (int) ;
 int pmap_simple_lock (int *) ;
 int pmap_simple_unlock (int *) ;
 int pmaps_lock ;
 int setbit (int,int*) ;

__attribute__((used)) static void
free_asid(
 int asid)
{

 assert((asid % ARM_MAX_ASID) != 0);

 pmap_simple_lock(&pmaps_lock);
 setbit(asid, (int *) asid_bitmap);







 pmap_simple_unlock(&pmaps_lock);
}
