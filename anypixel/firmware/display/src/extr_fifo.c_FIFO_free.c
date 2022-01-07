
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int free; } ;
typedef TYPE_1__ FIFO_Data_TypeDef ;



uint16_t FIFO_free(FIFO_Data_TypeDef *inStruct) {
 return inStruct->free;
}
