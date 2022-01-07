
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int record_id; } ;
typedef TYPE_2__ dbg_record_header_t ;
struct TYPE_5__ {unsigned int num_records; } ;
struct TYPE_7__ {TYPE_2__* records; TYPE_1__ top_level_header; } ;


 scalar_t__ OSCompareAndSwap64 (int ,int ,int *) ;
 TYPE_3__* consistent_debug_registry ;
 int kDbgIdReservedEntry ;
 int kDbgIdUnusedEntry ;

__attribute__((used)) static dbg_record_header_t* consistent_debug_allocate_entry(void) {
 unsigned int i;

 if (!consistent_debug_registry)
  return ((void*)0);
 for (i = 0; i < consistent_debug_registry->top_level_header.num_records; i++) {
  dbg_record_header_t *record = &consistent_debug_registry->records[i];
  if (OSCompareAndSwap64(kDbgIdUnusedEntry, kDbgIdReservedEntry, &record->record_id)) {

   return (dbg_record_header_t*)record;
  }
 }
 return ((void*)0);
}
