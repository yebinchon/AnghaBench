#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TIM_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLE ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCC_APB1Periph_TIM12 ; 
 int /*<<< orphan*/  RCC_APB1Periph_TIM13 ; 
 int /*<<< orphan*/  RCC_APB1Periph_TIM14 ; 
 int /*<<< orphan*/  RCC_APB1Periph_TIM2 ; 
 int /*<<< orphan*/  RCC_APB1Periph_TIM3 ; 
 int /*<<< orphan*/  RCC_APB1Periph_TIM4 ; 
 int /*<<< orphan*/  RCC_APB1Periph_TIM5 ; 
 int /*<<< orphan*/  RCC_APB1Periph_TIM6 ; 
 int /*<<< orphan*/  RCC_APB1Periph_TIM7 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCC_APB2Periph_TIM1 ; 
 int /*<<< orphan*/  RCC_APB2Periph_TIM10 ; 
 int /*<<< orphan*/  RCC_APB2Periph_TIM11 ; 
 int /*<<< orphan*/  RCC_APB2Periph_TIM8 ; 
 int /*<<< orphan*/  RCC_APB2Periph_TIM9 ; 
 int /*<<< orphan*/ * TIM1 ; 
 int /*<<< orphan*/ * TIM10 ; 
 int /*<<< orphan*/ * TIM11 ; 
 int /*<<< orphan*/ * TIM12 ; 
 int /*<<< orphan*/ * TIM13 ; 
 int /*<<< orphan*/ * TIM14 ; 
 int /*<<< orphan*/ * TIM2 ; 
 int /*<<< orphan*/ * TIM3 ; 
 int /*<<< orphan*/ * TIM4 ; 
 int /*<<< orphan*/ * TIM5 ; 
 int /*<<< orphan*/ * TIM6 ; 
 int /*<<< orphan*/ * TIM7 ; 
 int /*<<< orphan*/ * TIM8 ; 
 int /*<<< orphan*/ * TIM9 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(TIM_TypeDef* TIMx)
{
  /* Check the parameters */
  FUNC3(FUNC0(TIMx)); 
 
  if (TIMx == TIM1)
  {
    FUNC2(RCC_APB2Periph_TIM1, ENABLE);
    FUNC2(RCC_APB2Periph_TIM1, DISABLE);  
  } 
  else if (TIMx == TIM2) 
  {     
    FUNC1(RCC_APB1Periph_TIM2, ENABLE);
    FUNC1(RCC_APB1Periph_TIM2, DISABLE);
  }  
  else if (TIMx == TIM3)
  { 
    FUNC1(RCC_APB1Periph_TIM3, ENABLE);
    FUNC1(RCC_APB1Periph_TIM3, DISABLE);
  }  
  else if (TIMx == TIM4)
  { 
    FUNC1(RCC_APB1Periph_TIM4, ENABLE);
    FUNC1(RCC_APB1Periph_TIM4, DISABLE);
  }  
  else if (TIMx == TIM5)
  {      
    FUNC1(RCC_APB1Periph_TIM5, ENABLE);
    FUNC1(RCC_APB1Periph_TIM5, DISABLE);
  }  
  else if (TIMx == TIM6)  
  {    
    FUNC1(RCC_APB1Periph_TIM6, ENABLE);
    FUNC1(RCC_APB1Periph_TIM6, DISABLE);
  }  
  else if (TIMx == TIM7)
  {      
    FUNC1(RCC_APB1Periph_TIM7, ENABLE);
    FUNC1(RCC_APB1Periph_TIM7, DISABLE);
  }  
  else if (TIMx == TIM8)
  {      
    FUNC2(RCC_APB2Periph_TIM8, ENABLE);
    FUNC2(RCC_APB2Periph_TIM8, DISABLE);  
  }  
  else if (TIMx == TIM9)
  {      
    FUNC2(RCC_APB2Periph_TIM9, ENABLE);
    FUNC2(RCC_APB2Periph_TIM9, DISABLE);  
   }  
  else if (TIMx == TIM10)
  {      
    FUNC2(RCC_APB2Periph_TIM10, ENABLE);
    FUNC2(RCC_APB2Periph_TIM10, DISABLE);  
  }  
  else if (TIMx == TIM11) 
  {     
    FUNC2(RCC_APB2Periph_TIM11, ENABLE);
    FUNC2(RCC_APB2Periph_TIM11, DISABLE);  
  }  
  else if (TIMx == TIM12)
  {      
    FUNC1(RCC_APB1Periph_TIM12, ENABLE);
    FUNC1(RCC_APB1Periph_TIM12, DISABLE);  
  }  
  else if (TIMx == TIM13) 
  {       
    FUNC1(RCC_APB1Periph_TIM13, ENABLE);
    FUNC1(RCC_APB1Periph_TIM13, DISABLE);  
  }  
  else
  { 
    if (TIMx == TIM14) 
    {     
      FUNC1(RCC_APB1Periph_TIM14, ENABLE);
      FUNC1(RCC_APB1Periph_TIM14, DISABLE); 
    }   
  }
}