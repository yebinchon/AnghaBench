#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int JSQR; } ;
typedef  TYPE_1__ ADC_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int JSQR_JL_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(ADC_TypeDef* ADCx, uint8_t Length)
{
  uint32_t tmpreg1 = 0;
  uint32_t tmpreg2 = 0;
  /* Check the parameters */
  FUNC2(FUNC0(ADCx));
  FUNC2(FUNC1(Length));
  
  /* Get the old register value */
  tmpreg1 = ADCx->JSQR;
  
  /* Clear the old injected sequence length JL bits */
  tmpreg1 &= JSQR_JL_RESET;
  
  /* Set the injected sequence length JL bits */
  tmpreg2 = Length - 1; 
  tmpreg1 |= tmpreg2 << 20;
  
  /* Store the new register value */
  ADCx->JSQR = tmpreg1;
}