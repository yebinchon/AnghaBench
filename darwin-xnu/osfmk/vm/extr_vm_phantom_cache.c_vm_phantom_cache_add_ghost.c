
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef size_t vm_phantom_hash_entry_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
typedef TYPE_3__* vm_ghost_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_17__ {int vm_phantom_cache_added_ghost; } ;
struct TYPE_16__ {int g_pages_held; scalar_t__ g_obj_id; size_t g_obj_offset; size_t g_next_index; } ;
struct TYPE_15__ {scalar_t__ phantom_object_id; scalar_t__ phantom_isssd; int pager; } ;
struct TYPE_14__ {size_t vmp_offset; } ;
struct TYPE_13__ {int pcs_added_new_entry; int pcs_replaced_entry; int pcs_wrapped; int pcs_added_page_to_entry; } ;


 scalar_t__ FALSE ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int OSAddAtomic (int,int *) ;
 size_t PAGE_SHIFT ;
 scalar_t__ TRUE ;
 size_t VM_GHOST_OFFSET_MASK ;
 size_t VM_GHOST_PAGE_MASK ;
 size_t VM_GHOST_PAGE_SHIFT ;
 TYPE_2__* VM_PAGE_OBJECT (TYPE_1__*) ;
 scalar_t__ VM_PHANTOM_OBJECT_ID_AFTER_WRAP ;
 int panic (char*) ;
 int* pg_masks ;
 TYPE_10__ phantom_cache_stats ;
 int sample_period_ghost_added_count ;
 int sample_period_ghost_added_count_ssd ;
 int vm_object_lock_assert_exclusive (TYPE_2__*) ;
 int vm_page_queue_lock ;
 TYPE_8__ vm_pageout_vminfo ;
 TYPE_3__* vm_phantom_cache ;
 size_t* vm_phantom_cache_hash ;
 TYPE_3__* vm_phantom_cache_lookup_ghost (TYPE_1__*,int ) ;
 scalar_t__ vm_phantom_cache_nindx ;
 scalar_t__ vm_phantom_cache_num_entries ;
 size_t vm_phantom_hash (scalar_t__,size_t) ;
 scalar_t__ vm_phantom_object_id ;
 int vnode_pager_get_isSSD (int ,scalar_t__*) ;

void
vm_phantom_cache_add_ghost(vm_page_t m)
{
 vm_ghost_t vpce;
 vm_object_t object;
 int ghost_index;
 int pg_mask;
 boolean_t isSSD = FALSE;
 vm_phantom_hash_entry_t ghost_hash_index;

 object = VM_PAGE_OBJECT(m);

 LCK_MTX_ASSERT(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);
 vm_object_lock_assert_exclusive(object);

 if (vm_phantom_cache_num_entries == 0)
  return;

 pg_mask = pg_masks[(m->vmp_offset >> PAGE_SHIFT) & VM_GHOST_PAGE_MASK];

 if (object->phantom_object_id == 0) {

  vnode_pager_get_isSSD(object->pager, &isSSD);

  if (isSSD == TRUE)
   object->phantom_isssd = TRUE;

  object->phantom_object_id = vm_phantom_object_id++;

  if (vm_phantom_object_id == 0)
   vm_phantom_object_id = VM_PHANTOM_OBJECT_ID_AFTER_WRAP;
 } else {
  if ( (vpce = vm_phantom_cache_lookup_ghost(m, 0)) ) {
   vpce->g_pages_held |= pg_mask;

   phantom_cache_stats.pcs_added_page_to_entry++;
   goto done;
  }
 }






 ghost_index = vm_phantom_cache_nindx++;

 if (vm_phantom_cache_nindx == vm_phantom_cache_num_entries) {
  vm_phantom_cache_nindx = 1;

  phantom_cache_stats.pcs_wrapped++;
 }
 vpce = &vm_phantom_cache[ghost_index];

 if (vpce->g_obj_id) {




  vm_ghost_t nvpce;

  ghost_hash_index = vm_phantom_hash(vpce->g_obj_id, vpce->g_obj_offset);

  nvpce = &vm_phantom_cache[vm_phantom_cache_hash[ghost_hash_index]];

  if (nvpce == vpce) {
   vm_phantom_cache_hash[ghost_hash_index] = vpce->g_next_index;
  } else {
   for (;;) {
    if (nvpce->g_next_index == 0)
     panic("didn't find ghost in hash\n");

    if (&vm_phantom_cache[nvpce->g_next_index] == vpce) {
     nvpce->g_next_index = vpce->g_next_index;
     break;
    }
    nvpce = &vm_phantom_cache[nvpce->g_next_index];
   }
  }
  phantom_cache_stats.pcs_replaced_entry++;
 } else
  phantom_cache_stats.pcs_added_new_entry++;

 vpce->g_pages_held = pg_mask;
 vpce->g_obj_offset = (m->vmp_offset >> (PAGE_SHIFT + VM_GHOST_PAGE_SHIFT)) & VM_GHOST_OFFSET_MASK;
 vpce->g_obj_id = object->phantom_object_id;

 ghost_hash_index = vm_phantom_hash(vpce->g_obj_id, vpce->g_obj_offset);
 vpce->g_next_index = vm_phantom_cache_hash[ghost_hash_index];
 vm_phantom_cache_hash[ghost_hash_index] = ghost_index;

done:
 vm_pageout_vminfo.vm_phantom_cache_added_ghost++;

 if (object->phantom_isssd)
  OSAddAtomic(1, &sample_period_ghost_added_count_ssd);
 else
  OSAddAtomic(1, &sample_period_ghost_added_count);
}
