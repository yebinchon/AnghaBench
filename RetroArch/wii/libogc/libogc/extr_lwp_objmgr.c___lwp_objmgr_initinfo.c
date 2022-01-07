
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
typedef int lwp_queue ;
struct TYPE_5__ {size_t min_id; int max_id; int inactives_cnt; size_t node_size; size_t max_nodes; int inactives; int * obj_blocks; TYPE_2__** local_table; } ;
typedef TYPE_1__ lwp_objinfo ;
struct TYPE_6__ {size_t id; int node; int * information; } ;
typedef TYPE_2__ lwp_obj ;


 int __lwp_queue_append (int *,int *) ;
 scalar_t__ __lwp_queue_get (int *) ;
 int __lwp_queue_init_empty (int *) ;
 int __lwp_queue_initialize (int *,int *,int,int) ;
 int * __lwp_wkspace_allocate (int) ;
 int __lwp_wkspace_free (void**) ;
 size_t _lwp_objmgr_memsize ;
 TYPE_2__* null_local_table ;

void __lwp_objmgr_initinfo(lwp_objinfo *info,u32 max_nodes,u32 node_size)
{
 u32 idx,i,size;
 lwp_obj *object;
 lwp_queue inactives;
 void **local_table;

 info->min_id = 0;
 info->max_id = 0;
 info->inactives_cnt = 0;
 info->node_size = node_size;
 info->max_nodes = max_nodes;
 info->obj_blocks = ((void*)0);
 info->local_table = &null_local_table;

 __lwp_queue_init_empty(&info->inactives);

 size = ((info->max_nodes*sizeof(lwp_obj*))+(info->max_nodes*info->node_size));
 local_table = (void**)__lwp_wkspace_allocate(info->max_nodes*sizeof(lwp_obj*));
 if(!local_table) return;

 info->local_table = (lwp_obj**)local_table;
 for(i=0;i<info->max_nodes;i++) {
  local_table[i] = ((void*)0);
 }

 info->obj_blocks = __lwp_wkspace_allocate(info->max_nodes*info->node_size);
 if(!info->obj_blocks) {
  __lwp_wkspace_free(local_table);
  return;
 }

 __lwp_queue_initialize(&inactives,info->obj_blocks,info->max_nodes,info->node_size);

 idx = info->min_id;
 while((object=(lwp_obj*)__lwp_queue_get(&inactives))!=((void*)0)) {
  object->id = idx;
  object->information = ((void*)0);
  __lwp_queue_append(&info->inactives,&object->node);
  idx++;
 }

 info->max_id += info->max_nodes;
 info->inactives_cnt += info->max_nodes;
 _lwp_objmgr_memsize += size;
}
