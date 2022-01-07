
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int free; scalar_t__ head; scalar_t__ size; int * buffer; int overrun; } ;
typedef TYPE_1__ FIFO_Data_TypeDef ;


 int __LDREXH (int*) ;
 scalar_t__ __STREXH (int,int*) ;

bool FIFO_write_bytes(FIFO_Data_TypeDef *inStruct, uint8_t *inBytes, uint16_t count) {
 int i;
 uint16_t workFree;

 if(inStruct->free < count) {
  inStruct->overrun++;
  return 0;
 }

    for(i = 0; i < count; i++) {
        inStruct->buffer[inStruct->head++] = inBytes[i];
        if(inStruct->head >= inStruct->size)
            inStruct->head = 0;
    }
    do {
        workFree = __LDREXH(&inStruct->free);
        workFree -= count;
    } while( __STREXH(workFree, &inStruct->free));

 return 1;
}
