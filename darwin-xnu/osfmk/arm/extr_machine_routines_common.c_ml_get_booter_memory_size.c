
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int memSizeActual; int memSize; } ;


 TYPE_1__* BootArgs ;

uint64_t ml_get_booter_memory_size(void)
{
 uint64_t size;
 uint64_t roundsize = 512*1024*1024ULL;
 size = BootArgs->memSizeActual;
 if (!size) {
  size = BootArgs->memSize;
  if (size < (2 * roundsize)) roundsize >>= 1;
  size = (size + roundsize - 1) & ~(roundsize - 1);
  size -= BootArgs->memSize;
 }
 return (size);
}
