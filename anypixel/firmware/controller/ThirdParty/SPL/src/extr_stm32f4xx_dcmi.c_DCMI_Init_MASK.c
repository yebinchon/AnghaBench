#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int CR; } ;
struct TYPE_4__ {int DCMI_SynchroMode; int DCMI_PCKPolarity; int DCMI_VSPolarity; int DCMI_HSPolarity; int DCMI_CaptureRate; int DCMI_ExtendedDataMode; scalar_t__ DCMI_CaptureMode; } ;
typedef  TYPE_1__ DCMI_InitTypeDef ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(DCMI_InitTypeDef* DCMI_InitStruct)
{
  uint32_t temp = 0x0;
  
  /* Check the parameters */
  FUNC7(FUNC0(DCMI_InitStruct->DCMI_CaptureMode));
  FUNC7(FUNC5(DCMI_InitStruct->DCMI_SynchroMode));
  FUNC7(FUNC4(DCMI_InitStruct->DCMI_PCKPolarity));
  FUNC7(FUNC6(DCMI_InitStruct->DCMI_VSPolarity));
  FUNC7(FUNC3(DCMI_InitStruct->DCMI_HSPolarity));
  FUNC7(FUNC1(DCMI_InitStruct->DCMI_CaptureRate));
  FUNC7(FUNC2(DCMI_InitStruct->DCMI_ExtendedDataMode));

  /* The DCMI configuration registers should be programmed correctly before 
  enabling the CR_ENABLE Bit and the CR_CAPTURE Bit */
  DCMI->CR &= ~(DCMI_CR_ENABLE | DCMI_CR_CAPTURE);
   
  /* Reset the old DCMI configuration */
  temp = DCMI->CR;
  
  temp &= ~((uint32_t)DCMI_CR_CM     | DCMI_CR_ESS   | DCMI_CR_PCKPOL |
                      DCMI_CR_HSPOL  | DCMI_CR_VSPOL | DCMI_CR_FCRC_0 | 
                      DCMI_CR_FCRC_1 | DCMI_CR_EDM_0 | DCMI_CR_EDM_1); 
                  
  /* Sets the new configuration of the DCMI peripheral */
  temp |= ((uint32_t)DCMI_InitStruct->DCMI_CaptureMode |
                     DCMI_InitStruct->DCMI_SynchroMode |
                     DCMI_InitStruct->DCMI_PCKPolarity |
                     DCMI_InitStruct->DCMI_VSPolarity |
                     DCMI_InitStruct->DCMI_HSPolarity |
                     DCMI_InitStruct->DCMI_CaptureRate |
                     DCMI_InitStruct->DCMI_ExtendedDataMode);

  DCMI->CR = temp;                              
}