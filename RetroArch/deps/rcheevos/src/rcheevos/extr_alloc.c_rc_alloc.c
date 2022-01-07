
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ rc_scratch_t ;



void* rc_alloc(void* pointer, int* offset, int size, int alignment, rc_scratch_t* scratch) {
  void* ptr;

  *offset = (*offset + alignment - 1) & ~(alignment - 1);

  if (pointer != 0) {
    ptr = (void*)((char*)pointer + *offset);
  }
  else if (scratch != 0) {
    ptr = &scratch->obj;
  }
  else {
    ptr = 0;
  }

  *offset += size;
  return ptr;
}
