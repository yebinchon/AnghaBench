
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* upl_t ;
typedef int upl_size_t ;
typedef char uint64_t ;
typedef TYPE_3__* thread_t ;
struct upl_page_info {int dummy; } ;
struct upl {int dummy; } ;
struct TYPE_9__ {int * decmp_upl; } ;
struct TYPE_7__ {scalar_t__ prev; scalar_t__ next; } ;
struct TYPE_8__ {int flags; int ref_count; char* upl_reprio_info; char* upl_commit_records; int * upl_create_retaddr; scalar_t__ upl_commit_index; scalar_t__ upl_state; scalar_t__ ubc_alias2; scalar_t__ ubc_alias1; TYPE_1__ uplq; void* upl_creator; scalar_t__ decmp_io_upl; int upl_priority; int * upl_iodone; int * associated_upl; int * vector_upl; scalar_t__ highest_page; scalar_t__ ext_ref_count; int * map_object; scalar_t__ size; scalar_t__ kaddr; } ;


 int OSBacktrace (int *,int ) ;
 int TASK_POLICY_IO ;
 int UPL_CREATE_EXPEDITE_SUP ;
 int UPL_CREATE_INTERNAL ;
 int UPL_CREATE_IO_TRACKING ;
 int UPL_CREATE_LITE ;
 int UPL_DEBUG_STACK_FRAMES ;
 int UPL_EXPEDITE_SUPPORTED ;
 int UPL_INTERNAL ;
 int UPL_LITE ;
 int UPL_TRACKED_BY_OBJECT ;
 int atop (int ) ;
 int bzero (char*,int) ;
 void* current_thread () ;
 scalar_t__ kalloc (int) ;
 int proc_get_effective_thread_policy (void*,int ) ;
 int round_page_32 (int ) ;
 scalar_t__ upl_debug_enabled ;
 int upl_lock_init (TYPE_2__*) ;
 int upl_set_decmp_info (TYPE_2__*,int *) ;

__attribute__((used)) static upl_t
upl_create(int type, int flags, upl_size_t size)
{
 upl_t upl;
 vm_size_t page_field_size = 0;
 int upl_flags = 0;
 vm_size_t upl_size = sizeof(struct upl);

 size = round_page_32(size);

 if (type & UPL_CREATE_LITE) {
  page_field_size = (atop(size) + 7) >> 3;
  page_field_size = (page_field_size + 3) & 0xFFFFFFFC;

  upl_flags |= UPL_LITE;
 }
 if (type & UPL_CREATE_INTERNAL) {
  upl_size += sizeof(struct upl_page_info) * atop(size);

  upl_flags |= UPL_INTERNAL;
 }
 upl = (upl_t)kalloc(upl_size + page_field_size);

 if (page_field_size)
         bzero((char *)upl + upl_size, page_field_size);

 upl->flags = upl_flags | flags;
 upl->kaddr = (vm_offset_t)0;
 upl->size = 0;
 upl->map_object = ((void*)0);
 upl->ref_count = 1;
 upl->ext_ref_count = 0;
 upl->highest_page = 0;
 upl_lock_init(upl);
 upl->vector_upl = ((void*)0);
 upl->associated_upl = ((void*)0);
 upl->upl_iodone = ((void*)0);
 return(upl);
}
