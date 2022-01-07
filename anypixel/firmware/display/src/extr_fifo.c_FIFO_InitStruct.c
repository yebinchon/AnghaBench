
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint16_t ;
struct TYPE_3__ {scalar_t__ overrun; void* free; void* size; scalar_t__ tail; scalar_t__ head; int * buffer; } ;
typedef TYPE_1__ FIFO_Data_TypeDef ;



bool FIFO_InitStruct(FIFO_Data_TypeDef *inStruct, uint8_t* inBuf, uint16_t inBufSize) {
 if(inStruct == ((void*)0) || inBuf == ((void*)0))
  return 0;
 inStruct->buffer = inBuf;
 inStruct->head = 0;
 inStruct->tail = 0;
 inStruct->size = inBufSize;
 inStruct->free = inBufSize;
 inStruct->overrun = 0;
 return 1;
}
