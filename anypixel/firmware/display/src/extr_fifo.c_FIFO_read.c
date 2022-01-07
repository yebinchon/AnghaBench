
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int size; int free; scalar_t__ tail; int * buffer; } ;
typedef TYPE_1__ FIFO_Data_TypeDef ;


 int __LDREXH (int*) ;
 scalar_t__ __STREXH (int,int*) ;

bool FIFO_read(FIFO_Data_TypeDef *inStruct, uint8_t *outByte, uint16_t count) {
 int i;
 uint16_t workFree;

 if( count > (inStruct->size - inStruct->free) )
  return 0;

 for(i = 0; i < count; i++) {
  outByte[i] = inStruct->buffer[inStruct->tail++];
  if(inStruct->tail >= inStruct->size) {
   inStruct->tail = 0;
  }
 }
    do {
        workFree = __LDREXH(&inStruct->free);
        workFree += count;
    } while( __STREXH(workFree, &inStruct->free));

 return 1;
}
