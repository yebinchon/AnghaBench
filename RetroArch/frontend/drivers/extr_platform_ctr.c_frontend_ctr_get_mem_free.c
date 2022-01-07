
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int MEMREGION_ALL ;
 int osGetMemRegionFree (int ) ;

__attribute__((used)) static uint64_t frontend_ctr_get_mem_free(void)
{
   return osGetMemRegionFree(MEMREGION_ALL);
}
