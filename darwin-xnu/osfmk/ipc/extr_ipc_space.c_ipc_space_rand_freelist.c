
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ mach_port_index_t ;
typedef TYPE_1__* ipc_space_t ;
typedef TYPE_2__* ipc_entry_t ;
typedef scalar_t__ ipc_entry_num_t ;
struct TYPE_6__ {void* ie_bits; scalar_t__ ie_index; void* ie_object; scalar_t__ ie_next; } ;
struct TYPE_5__ {int * is_entropy; int bool_gen; } ;


 void* IE_BITS_GEN_MASK ;
 void* IO_NULL ;
 int IS_ENTROPY_CNT ;
 scalar_t__ NUM_SEQ_ENTRIES ;
 int random_bool_gen_bits (int *,int *,int ,int) ;

void
ipc_space_rand_freelist(
 ipc_space_t space,
 ipc_entry_t table,
 mach_port_index_t bottom,
 mach_port_index_t top)
{
 int at_start = (bottom == 0);
 mach_port_index_t curr = bottom;
 bottom++;
 top--;






 while (bottom <= top) {
  ipc_entry_t entry = &table[curr];
  int which;
   which = random_bool_gen_bits(
      &space->bool_gen,
      &space->is_entropy[0],
      IS_ENTROPY_CNT,
      1);

  mach_port_index_t next;
  if (which) {
   next = top;
   top--;
  } else {
   next = bottom;
   bottom++;
  }





  entry->ie_bits = IE_BITS_GEN_MASK;
  entry->ie_next = next;
  entry->ie_object = IO_NULL;
  entry->ie_index = 0;
  curr = next;
 }
 table[curr].ie_next = 0;
 table[curr].ie_object = IO_NULL;
 table[curr].ie_index = 0;
 table[curr].ie_bits = IE_BITS_GEN_MASK;


 if (at_start) {
  table[0].ie_bits = 0;
 }
}
