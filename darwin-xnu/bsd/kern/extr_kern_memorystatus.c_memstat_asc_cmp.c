
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ msi_page_count; } ;
typedef TYPE_1__ memstat_sort_info_t ;



__attribute__((used)) static int memstat_asc_cmp(const void *a, const void *b)
{
        const memstat_sort_info_t *msA = (const memstat_sort_info_t *)a;
        const memstat_sort_info_t *msB = (const memstat_sort_info_t *)b;

        return (int)((uint64_t)msA->msi_page_count - (uint64_t)msB->msi_page_count);
}
