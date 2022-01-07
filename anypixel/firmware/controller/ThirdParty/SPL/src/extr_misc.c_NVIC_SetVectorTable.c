
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int VTOR; } ;


 int IS_NVIC_OFFSET (int) ;
 int IS_NVIC_VECTTAB (int) ;
 TYPE_1__* SCB ;
 int assert_param (int ) ;

void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset)
{

  assert_param(IS_NVIC_VECTTAB(NVIC_VectTab));
  assert_param(IS_NVIC_OFFSET(Offset));

  SCB->VTOR = NVIC_VectTab | (Offset & (uint32_t)0x1FFFFF80);
}
