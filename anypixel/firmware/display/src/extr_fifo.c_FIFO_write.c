
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ head; scalar_t__ size; int free; int * buffer; int overrun; } ;
typedef TYPE_1__ FIFO_Data_TypeDef ;


 int __LDREXH (int *) ;
 scalar_t__ __STREXH (int,int *) ;

inline bool FIFO_write(FIFO_Data_TypeDef *inStruct, uint8_t inByte) {
    uint16_t workFree;
 if(inStruct->free <= 0) {
  inStruct->overrun++;
  return 0;
 }

    inStruct->buffer[inStruct->head++] = inByte;
    if(inStruct->head >= inStruct->size)
        inStruct->head = 0;

    do {
        workFree = __LDREXH(&inStruct->free);
        workFree -= 1;
    } while( __STREXH(workFree, &inStruct->free));


 return 1;
}
