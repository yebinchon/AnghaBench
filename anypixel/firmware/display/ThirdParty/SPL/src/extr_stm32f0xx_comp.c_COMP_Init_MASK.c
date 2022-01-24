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
struct TYPE_5__ {int CSR; } ;
struct TYPE_4__ {int COMP_InvertingInput; int COMP_Output; int COMP_OutputPol; int COMP_Hysteresis; int COMP_Mode; } ;
typedef  TYPE_1__ COMP_InitTypeDef ;

/* Variables and functions */
 TYPE_3__* COMP ; 
 int COMP_CSR_CLEAR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(uint32_t COMP_Selection, COMP_InitTypeDef* COMP_InitStruct)
{
  uint32_t tmpreg = 0;

  /* Check the parameters */
  FUNC6(FUNC0(COMP_Selection));
  FUNC6(FUNC2(COMP_InitStruct->COMP_InvertingInput));
  FUNC6(FUNC4(COMP_InitStruct->COMP_Output));
  FUNC6(FUNC5(COMP_InitStruct->COMP_OutputPol));
  FUNC6(FUNC1(COMP_InitStruct->COMP_Hysteresis));
  FUNC6(FUNC3(COMP_InitStruct->COMP_Mode));

  /*!< Get the COMP_CSR register value */
  tmpreg = COMP->CSR;

  /*!< Clear the COMP1SW1, COMPx_IN_SEL, COMPx_OUT_TIM_SEL, COMPx_POL, COMPx_HYST and COMPx_PWR_MODE bits */ 
  tmpreg &= (uint32_t) ~(COMP_CSR_CLEAR_MASK<<COMP_Selection);

  /*!< Configure COMP: inverting input, output redirection, hysteresis value and power mode */
  /*!< Set COMPxINSEL bits according to COMP_InitStruct->COMP_InvertingInput value */
  /*!< Set COMPxOUTSEL bits according to COMP_InitStruct->COMP_Output value */
  /*!< Set COMPxPOL bit according to COMP_InitStruct->COMP_OutputPol value */
  /*!< Set COMPxHYST bits according to COMP_InitStruct->COMP_Hysteresis value */
  /*!< Set COMPxMODE bits according to COMP_InitStruct->COMP_Mode value */   
  tmpreg |= (uint32_t)((COMP_InitStruct->COMP_InvertingInput | COMP_InitStruct->COMP_Output |
                       COMP_InitStruct->COMP_OutputPol | COMP_InitStruct->COMP_Hysteresis |
                       COMP_InitStruct->COMP_Mode)<<COMP_Selection);

  /*!< Write to COMP_CSR register */
  COMP->CSR = tmpreg;  
}