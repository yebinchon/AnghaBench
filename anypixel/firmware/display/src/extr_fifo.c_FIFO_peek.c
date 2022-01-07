
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t tail; int * buffer; } ;
typedef TYPE_1__ FIFO_Data_TypeDef ;



uint8_t FIFO_peek(FIFO_Data_TypeDef *inStruct) {
 return inStruct->buffer[inStruct->tail];
}
