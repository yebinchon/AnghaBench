
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef scalar_t__ vm_object_offset_t ;
typedef int vm_behavior_t ;
typedef int UInt32 ;
struct TYPE_3__ {int sequential; scalar_t__ last_alloc; } ;


 int MAX_SEQUENTIAL_RUN ;
 int OSCompareAndSwap (int,int,int *) ;
 int PAGE_SIZE ;
 scalar_t__ PAGE_SIZE_64 ;





__attribute__((used)) static
void
vm_fault_is_sequential(
 vm_object_t object,
 vm_object_offset_t offset,
 vm_behavior_t behavior)
{
        vm_object_offset_t last_alloc;
 int sequential;
 int orig_sequential;

        last_alloc = object->last_alloc;
 sequential = object->sequential;
 orig_sequential = sequential;

 switch (behavior) {
 case 130:



         sequential = 0;
         break;

 case 128:
         if (offset && last_alloc == offset - PAGE_SIZE_64) {



          if (sequential < MAX_SEQUENTIAL_RUN)
           sequential += PAGE_SIZE;
  } else {



          sequential = 0;
  }
         break;

 case 129:
         if (last_alloc && last_alloc == offset + PAGE_SIZE_64) {



          if (sequential > -MAX_SEQUENTIAL_RUN)
           sequential -= PAGE_SIZE;
  } else {



          sequential = 0;
  }
         break;

 case 131:
 default:
         if (offset && last_alloc == (offset - PAGE_SIZE_64)) {



          if (sequential < 0)
           sequential = 0;
          if (sequential < MAX_SEQUENTIAL_RUN)
           sequential += PAGE_SIZE;

  } else if (last_alloc && last_alloc == (offset + PAGE_SIZE_64)) {



          if (sequential > 0)
           sequential = 0;
          if (sequential > -MAX_SEQUENTIAL_RUN)
           sequential -= PAGE_SIZE;
  } else {



          sequential = 0;
  }
         break;
 }
 if (sequential != orig_sequential) {
         if (!OSCompareAndSwap(orig_sequential, sequential, (UInt32 *)&object->sequential)) {




          return;
  }
 }
 object->last_alloc = offset;
}
