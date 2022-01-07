
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int task_t ;


 int PAGE_SIZE_64 ;
 int assert (int ) ;
 int get_task_alternate_accounting (int ) ;
 int get_task_alternate_accounting_compressed (int ) ;
 int get_task_internal (int ) ;
 int get_task_internal_compressed (int ) ;
 int get_task_iokit_mapped (int ) ;
 int get_task_page_table (int ) ;
 int get_task_purgeable_nonvolatile (int ) ;
 int get_task_purgeable_nonvolatile_compressed (int ) ;

__attribute__((used)) static void
memorystatus_get_task_phys_footprint_page_counts(task_t task,
       uint64_t *internal_pages, uint64_t *internal_compressed_pages,
       uint64_t *purgeable_nonvolatile_pages, uint64_t *purgeable_nonvolatile_compressed_pages,
       uint64_t *alternate_accounting_pages, uint64_t *alternate_accounting_compressed_pages,
       uint64_t *iokit_mapped_pages, uint64_t *page_table_pages)
{
 assert(task);

 if (internal_pages) {
  *internal_pages = (get_task_internal(task) / PAGE_SIZE_64);
 }

 if (internal_compressed_pages) {
  *internal_compressed_pages = (get_task_internal_compressed(task) / PAGE_SIZE_64);
 }

 if (purgeable_nonvolatile_pages) {
  *purgeable_nonvolatile_pages = (get_task_purgeable_nonvolatile(task) / PAGE_SIZE_64);
 }

 if (purgeable_nonvolatile_compressed_pages) {
  *purgeable_nonvolatile_compressed_pages = (get_task_purgeable_nonvolatile_compressed(task) / PAGE_SIZE_64);
 }

 if (alternate_accounting_pages) {
  *alternate_accounting_pages = (get_task_alternate_accounting(task) / PAGE_SIZE_64);
 }

 if (alternate_accounting_compressed_pages) {
  *alternate_accounting_compressed_pages = (get_task_alternate_accounting_compressed(task) / PAGE_SIZE_64);
 }

 if (iokit_mapped_pages) {
  *iokit_mapped_pages = (get_task_iokit_mapped(task) / PAGE_SIZE_64);
 }

 if (page_table_pages) {
  *page_table_pages = (get_task_page_table(task) / PAGE_SIZE_64);
 }
}
