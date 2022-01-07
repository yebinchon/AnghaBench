
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int CSR; } ;
struct TYPE_4__ {int COMP_InvertingInput; int COMP_Output; int COMP_OutputPol; int COMP_Hysteresis; int COMP_Mode; } ;
typedef TYPE_1__ COMP_InitTypeDef ;


 TYPE_3__* COMP ;
 int COMP_CSR_CLEAR_MASK ;
 int IS_COMP_ALL_PERIPH (int) ;
 int IS_COMP_HYSTERESIS (int) ;
 int IS_COMP_INVERTING_INPUT (int) ;
 int IS_COMP_MODE (int) ;
 int IS_COMP_OUTPUT (int) ;
 int IS_COMP_OUTPUT_POL (int) ;
 int assert_param (int ) ;

void COMP_Init(uint32_t COMP_Selection, COMP_InitTypeDef* COMP_InitStruct)
{
  uint32_t tmpreg = 0;


  assert_param(IS_COMP_ALL_PERIPH(COMP_Selection));
  assert_param(IS_COMP_INVERTING_INPUT(COMP_InitStruct->COMP_InvertingInput));
  assert_param(IS_COMP_OUTPUT(COMP_InitStruct->COMP_Output));
  assert_param(IS_COMP_OUTPUT_POL(COMP_InitStruct->COMP_OutputPol));
  assert_param(IS_COMP_HYSTERESIS(COMP_InitStruct->COMP_Hysteresis));
  assert_param(IS_COMP_MODE(COMP_InitStruct->COMP_Mode));


  tmpreg = COMP->CSR;


  tmpreg &= (uint32_t) ~(COMP_CSR_CLEAR_MASK<<COMP_Selection);







  tmpreg |= (uint32_t)((COMP_InitStruct->COMP_InvertingInput | COMP_InitStruct->COMP_Output |
                       COMP_InitStruct->COMP_OutputPol | COMP_InitStruct->COMP_Hysteresis |
                       COMP_InitStruct->COMP_Mode)<<COMP_Selection);


  COMP->CSR = tmpreg;
}
