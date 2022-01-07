
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint64_t ;


 int _SC_PAGE_SIZE ;
 int _SC_PHYS_PAGES ;
 long sysconf (int ) ;

__attribute__((used)) static uint64_t frontend_unix_get_mem_total(void)
{
   long pages = sysconf(_SC_PHYS_PAGES);
   long page_size = sysconf(_SC_PAGE_SIZE);
   return pages * page_size;
}
