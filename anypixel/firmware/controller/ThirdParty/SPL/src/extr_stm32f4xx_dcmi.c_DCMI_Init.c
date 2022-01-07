
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int CR; } ;
struct TYPE_4__ {int DCMI_SynchroMode; int DCMI_PCKPolarity; int DCMI_VSPolarity; int DCMI_HSPolarity; int DCMI_CaptureRate; int DCMI_ExtendedDataMode; scalar_t__ DCMI_CaptureMode; } ;
typedef TYPE_1__ DCMI_InitTypeDef ;


 TYPE_3__* DCMI ;
 int DCMI_CR_CAPTURE ;
 scalar_t__ DCMI_CR_CM ;
 int DCMI_CR_EDM_0 ;
 int DCMI_CR_EDM_1 ;
 int DCMI_CR_ENABLE ;
 int DCMI_CR_ESS ;
 int DCMI_CR_FCRC_0 ;
 int DCMI_CR_FCRC_1 ;
 int DCMI_CR_HSPOL ;
 int DCMI_CR_PCKPOL ;
 int DCMI_CR_VSPOL ;
 int IS_DCMI_CAPTURE_MODE (scalar_t__) ;
 int IS_DCMI_CAPTURE_RATE (int) ;
 int IS_DCMI_EXTENDED_DATA (int) ;
 int IS_DCMI_HSPOLARITY (int) ;
 int IS_DCMI_PCKPOLARITY (int) ;
 int IS_DCMI_SYNCHRO (int) ;
 int IS_DCMI_VSPOLARITY (int) ;
 int assert_param (int ) ;

void DCMI_Init(DCMI_InitTypeDef* DCMI_InitStruct)
{
  uint32_t temp = 0x0;


  assert_param(IS_DCMI_CAPTURE_MODE(DCMI_InitStruct->DCMI_CaptureMode));
  assert_param(IS_DCMI_SYNCHRO(DCMI_InitStruct->DCMI_SynchroMode));
  assert_param(IS_DCMI_PCKPOLARITY(DCMI_InitStruct->DCMI_PCKPolarity));
  assert_param(IS_DCMI_VSPOLARITY(DCMI_InitStruct->DCMI_VSPolarity));
  assert_param(IS_DCMI_HSPOLARITY(DCMI_InitStruct->DCMI_HSPolarity));
  assert_param(IS_DCMI_CAPTURE_RATE(DCMI_InitStruct->DCMI_CaptureRate));
  assert_param(IS_DCMI_EXTENDED_DATA(DCMI_InitStruct->DCMI_ExtendedDataMode));



  DCMI->CR &= ~(DCMI_CR_ENABLE | DCMI_CR_CAPTURE);


  temp = DCMI->CR;

  temp &= ~((uint32_t)DCMI_CR_CM | DCMI_CR_ESS | DCMI_CR_PCKPOL |
                      DCMI_CR_HSPOL | DCMI_CR_VSPOL | DCMI_CR_FCRC_0 |
                      DCMI_CR_FCRC_1 | DCMI_CR_EDM_0 | DCMI_CR_EDM_1);


  temp |= ((uint32_t)DCMI_InitStruct->DCMI_CaptureMode |
                     DCMI_InitStruct->DCMI_SynchroMode |
                     DCMI_InitStruct->DCMI_PCKPolarity |
                     DCMI_InitStruct->DCMI_VSPolarity |
                     DCMI_InitStruct->DCMI_HSPolarity |
                     DCMI_InitStruct->DCMI_CaptureRate |
                     DCMI_InitStruct->DCMI_ExtendedDataMode);

  DCMI->CR = temp;
}
