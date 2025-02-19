
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ TIMEOUTR; } ;
typedef TYPE_1__ I2C_TypeDef ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 scalar_t__ I2C_TIMEOUTR_TIDLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_I2C_1_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void I2C_IdleClockTimeoutCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
{

  assert_param(IS_I2C_1_PERIPH(I2Cx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    I2Cx->TIMEOUTR |= I2C_TIMEOUTR_TIDLE;
  }
  else
  {

    I2Cx->TIMEOUTR &= (uint32_t)~((uint32_t)I2C_TIMEOUTR_TIDLE);
  }
}
