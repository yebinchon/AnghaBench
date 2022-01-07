
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ctr_free_pages (int) ;
 int ctr_get_free_space () ;

void ctr_request_free_pages(u32 pages)
{
   u32 free_pages = ctr_get_free_space() >> 12;
   if (pages > free_pages)
   {
      ctr_free_pages(pages - free_pages);
      free_pages = ctr_get_free_space() >> 12;
   }
}
