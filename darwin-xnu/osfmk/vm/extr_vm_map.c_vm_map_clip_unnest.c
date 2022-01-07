
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct TYPE_18__ {int is_nested_map; scalar_t__ lowest_unnestable_start; int disable_vmentry_reuse; } ;
struct TYPE_17__ {int is_sub_map; int use_pmap; scalar_t__ vme_start; scalar_t__ vme_end; } ;
struct TYPE_16__ {scalar_t__ pmap; scalar_t__ map_refcnt; scalar_t__ mapped_in_other_pmaps; int * first_free; scalar_t__ holelistenabled; int hdr; } ;


 int FALSE ;
 scalar_t__ VME_ALIAS (TYPE_2__*) ;
 int VME_ALIAS_SET (TYPE_2__*,int ) ;
 scalar_t__ VME_OFFSET (TYPE_2__*) ;
 TYPE_4__* VME_SUBMAP (TYPE_2__*) ;
 scalar_t__ VM_MEMORY_SHARED_PMAP ;
 int VM_MEMORY_UNSHARED_PMAP ;
 int _vm_map_clip_end (int *,TYPE_2__*,scalar_t__) ;
 int _vm_map_clip_start (int *,TYPE_2__*,scalar_t__) ;
 int assert (int) ;
 scalar_t__ kernel_pmap ;
 int log_unnest_badness (TYPE_1__*,scalar_t__,scalar_t__,int,scalar_t__) ;
 int panic (char*,long long,long long,long long,long long) ;
 scalar_t__ pmap_adjust_unnest_parameters (scalar_t__,scalar_t__*,scalar_t__*) ;
 int pmap_unnest (scalar_t__,scalar_t__,scalar_t__) ;
 int vm_map_store_update_first_free (TYPE_1__*,int *,int) ;
 int vm_map_submap_pmap_clean (TYPE_1__*,scalar_t__,scalar_t__,TYPE_4__*,scalar_t__) ;

__attribute__((used)) static void
vm_map_clip_unnest(
 vm_map_t map,
 vm_map_entry_t entry,
 vm_map_offset_t start_unnest,
 vm_map_offset_t end_unnest)
{
 vm_map_offset_t old_start_unnest = start_unnest;
 vm_map_offset_t old_end_unnest = end_unnest;

 assert(entry->is_sub_map);
 assert(VME_SUBMAP(entry) != ((void*)0));
 assert(entry->use_pmap);
 if (pmap_adjust_unnest_parameters(map->pmap, &start_unnest, &end_unnest)) {
  assert(VME_SUBMAP(entry)->is_nested_map);
  assert(!VME_SUBMAP(entry)->disable_vmentry_reuse);
  log_unnest_badness(map,
       old_start_unnest,
       old_end_unnest,
       VME_SUBMAP(entry)->is_nested_map,
       (entry->vme_start +
        VME_SUBMAP(entry)->lowest_unnestable_start -
        VME_OFFSET(entry)));
 }

 if (entry->vme_start > start_unnest ||
     entry->vme_end < end_unnest) {
  panic("vm_map_clip_unnest(0x%llx,0x%llx): "
        "bad nested entry: start=0x%llx end=0x%llx\n",
        (long long)start_unnest, (long long)end_unnest,
        (long long)entry->vme_start, (long long)entry->vme_end);
 }

 if (start_unnest > entry->vme_start) {
  _vm_map_clip_start(&map->hdr,
       entry,
       start_unnest);
  if (map->holelistenabled) {
   vm_map_store_update_first_free(map, ((void*)0), FALSE);
  } else {
   vm_map_store_update_first_free(map, map->first_free, FALSE);
  }
 }
 if (entry->vme_end > end_unnest) {
  _vm_map_clip_end(&map->hdr,
     entry,
     end_unnest);
  if (map->holelistenabled) {
   vm_map_store_update_first_free(map, ((void*)0), FALSE);
  } else {
   vm_map_store_update_first_free(map, map->first_free, FALSE);
  }
 }

 pmap_unnest(map->pmap,
      entry->vme_start,
      entry->vme_end - entry->vme_start);
 if ((map->mapped_in_other_pmaps) && (map->map_refcnt)) {

  vm_map_submap_pmap_clean(
   map, entry->vme_start,
   entry->vme_end,
   VME_SUBMAP(entry),
   VME_OFFSET(entry));
 }
 entry->use_pmap = FALSE;
 if ((map->pmap != kernel_pmap) &&
     (VME_ALIAS(entry) == VM_MEMORY_SHARED_PMAP)) {
  VME_ALIAS_SET(entry, VM_MEMORY_UNSHARED_PMAP);
 }
}
