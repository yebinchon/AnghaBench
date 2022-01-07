
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ppnum_t ;
struct TYPE_2__ {scalar_t__ end; } ;


 unsigned int pmap_memory_region_count ;
 TYPE_1__* pmap_memory_regions ;

ppnum_t IOGetLastPageNumber(void)
{

 ppnum_t lastPage, highest = 0;
 unsigned int idx;

 for (idx = 0; idx < pmap_memory_region_count; idx++)
 {
  lastPage = pmap_memory_regions[idx].end - 1;
  if (lastPage > highest)
   highest = lastPage;
 }
 return (highest);





}
