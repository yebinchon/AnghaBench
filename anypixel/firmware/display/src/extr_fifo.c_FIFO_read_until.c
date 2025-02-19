
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int size; int free; int tail; char const* buffer; } ;
typedef TYPE_1__ FIFO_Data_TypeDef ;


 int FIFO_read (TYPE_1__*,int*,int) ;

uint16_t FIFO_read_until(FIFO_Data_TypeDef *inStruct, uint8_t *outByte, uint16_t max, const char *searchList, uint8_t listLength) {
 int i, j, ptr, available;

 available = inStruct->size - inStruct->free;
 if(available > max)
  available = max;
 ptr = inStruct->tail;
 for(i = 0; i < available; i++) {
  for(j = 0; j < listLength; j++) {
   if( inStruct->buffer[ptr] == searchList[j] ) {

    FIFO_read( inStruct, outByte, i+1 );
    return i+1;
   }
  }
  ptr++;
  if(ptr >= inStruct->size)
   ptr = 0;
 }

 if(i == max) {
  FIFO_read(inStruct, outByte, i);
  return i;
 }
 return 0;
}
