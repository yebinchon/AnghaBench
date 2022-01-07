
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int vm_object_size_t ;
typedef int vm_object_offset_t ;
typedef int vm_map_offset_t ;
struct pmap {int dummy; } ;
typedef int pmap_flush_context ;
typedef int chunk_state_t ;
typedef int boolean_t ;
struct TYPE_8__ {scalar_t__ vo_shadow_offset; struct TYPE_8__* shadow; } ;


 int CHUNK_INIT (int ,int ) ;
 scalar_t__ CHUNK_NOT_COMPLETE (int ) ;
 int CHUNK_SIZE ;
 int FALSE ;
 int MIN (int ,int ) ;
 int deactivate_pages_in_object (TYPE_1__*,int ,int ,int ,int ,int ,int *,int *,struct pmap*,int ) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_paging_begin (TYPE_1__*) ;
 int vm_object_paging_end (TYPE_1__*) ;
 int vm_object_unlock (TYPE_1__*) ;

__attribute__((used)) static vm_object_size_t
deactivate_a_chunk(
 vm_object_t orig_object,
 vm_object_offset_t offset,
 vm_object_size_t size,
 boolean_t kill_page,
 boolean_t reusable_page,
 boolean_t all_reusable,
 pmap_flush_context *pfc,
 struct pmap *pmap,
 vm_map_offset_t pmap_offset)
{
 vm_object_t object;
 vm_object_t tmp_object;
 vm_object_size_t length;
 chunk_state_t chunk_state;







 length = MIN(size, CHUNK_SIZE);







 CHUNK_INIT(chunk_state, length);
 object = orig_object;







 while (object && CHUNK_NOT_COMPLETE(chunk_state)) {
  vm_object_paging_begin(object);

  deactivate_pages_in_object(object, offset, length, kill_page, reusable_page, all_reusable, &chunk_state, pfc, pmap, pmap_offset);

  vm_object_paging_end(object);







  tmp_object = object->shadow;

  if (tmp_object) {
   kill_page = FALSE;
   reusable_page = FALSE;
   all_reusable = FALSE;
          offset += object->vo_shadow_offset;
          vm_object_lock(tmp_object);
  }

  if (object != orig_object)
          vm_object_unlock(object);

  object = tmp_object;
 }

 if (object && object != orig_object)
         vm_object_unlock(object);

 return length;
}
