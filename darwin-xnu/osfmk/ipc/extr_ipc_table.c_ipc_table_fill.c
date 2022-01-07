
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int vm_size_t ;
typedef TYPE_1__* ipc_table_size_t ;
typedef void* ipc_table_elems_t ;
struct TYPE_3__ {void* its_size; } ;


 unsigned int PAGE_MAX_SIZE ;

__attribute__((used)) static void
ipc_table_fill(
 ipc_table_size_t its,
 unsigned int num,
 unsigned int min,
 vm_size_t elemsize)
{
 unsigned int index;
 vm_size_t minsize = min * elemsize;
 vm_size_t size;
 vm_size_t incrsize;



 for (index = 0, size = 1;
      (index < num) && (size < PAGE_MAX_SIZE);
      size <<= 1) {
  if (size >= minsize) {
   its[index].its_size = (ipc_table_elems_t)(size / elemsize);
   index++;
  }
 }



 for (incrsize = PAGE_MAX_SIZE; index < num;) {
  unsigned int period;

  for (period = 0;
       (period < 15) && (index < num);
       period++, size += incrsize) {
   if (size >= minsize) {
    its[index].its_size = (ipc_table_elems_t)(size / elemsize);
    index++;
   }
  }
  if (incrsize < (vm_size_t)(PAGE_MAX_SIZE << 3))
   incrsize <<= 1;
 }
}
