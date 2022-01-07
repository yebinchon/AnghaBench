
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

uint16_t FIFO_read_token(FIFO_Data_TypeDef *inStruct, uint8_t *outBytes, uint16_t max, const char *delimiters, uint8_t listLength) {
 int i, j, ptr, available, start;
 bool found;

 start = -1;

 available = inStruct->size - inStruct->free;
 if(available > max)
  available = max;
 ptr = inStruct->tail;
 for(i = 0; i < available; i++) {
        found = 0;
  for(j = 0; j < listLength; j++) {
   if( inStruct->buffer[ptr] == delimiters[j] ) {

                found = 1;
       if(start != -1) {

                    if(start != 0)
                        FIFO_read( inStruct, outBytes, start );

           FIFO_read( inStruct, outBytes, i+1-start );
                    return i-start;
       }
       break;
   }
  }
  if(!found && start == -1)
            start = i;

  ptr++;
  if(ptr >= inStruct->size)
   ptr = 0;
 }


 if(i == max) {
  FIFO_read(inStruct, outBytes, i);
  return i;
 }
 return 0;
}
