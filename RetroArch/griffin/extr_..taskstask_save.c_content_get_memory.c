
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ram_type {int type; int path; } ;
struct TYPE_9__ {scalar_t__ size; int data; int id; } ;
typedef TYPE_3__ retro_ctx_memory_info_t ;
struct TYPE_10__ {TYPE_2__* elems; } ;
struct TYPE_7__ {int i; } ;
struct TYPE_8__ {int data; TYPE_1__ attr; } ;


 int core_get_memory (TYPE_3__*) ;
 TYPE_4__* task_save_files ;

__attribute__((used)) static bool content_get_memory(retro_ctx_memory_info_t *mem_info,
      struct ram_type *ram, unsigned slot)
{
   ram->type = task_save_files->elems[slot].attr.i;
   ram->path = task_save_files->elems[slot].data;

   mem_info->id = ram->type;

   core_get_memory(mem_info);

   if (!mem_info->data || mem_info->size == 0)
      return 0;

   return 1;
}
