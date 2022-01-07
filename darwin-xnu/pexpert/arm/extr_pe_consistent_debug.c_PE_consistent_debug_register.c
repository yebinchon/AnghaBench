
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_3__ {void* record_id; void* physaddr; void* length; } ;
typedef TYPE_1__ dbg_record_header_t ;


 TYPE_1__* consistent_debug_allocate_entry () ;

int PE_consistent_debug_register(uint64_t record_id, uint64_t physaddr, uint64_t length)
{
 dbg_record_header_t *allocated_header = consistent_debug_allocate_entry();
 if (allocated_header == ((void*)0))
  return -1;
 allocated_header->length = length;
 allocated_header->physaddr = physaddr;

 __asm__ volatile("dmb ish" : : : "memory");
 allocated_header->record_id = record_id;
 return 0;
}
