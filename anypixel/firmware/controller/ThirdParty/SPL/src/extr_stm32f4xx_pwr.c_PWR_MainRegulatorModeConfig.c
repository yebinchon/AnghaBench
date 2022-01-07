
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int CR; } ;


 int IS_PWR_REGULATOR_VOLTAGE (scalar_t__) ;
 TYPE_1__* PWR ;
 int PWR_Regulator_Voltage_Scale1 ;
 scalar_t__ PWR_Regulator_Voltage_Scale2 ;
 int assert_param (int ) ;

void PWR_MainRegulatorModeConfig(uint32_t PWR_Regulator_Voltage)
{

  assert_param(IS_PWR_REGULATOR_VOLTAGE(PWR_Regulator_Voltage));

  if (PWR_Regulator_Voltage == PWR_Regulator_Voltage_Scale2)
  {
    PWR->CR &= ~PWR_Regulator_Voltage_Scale1;
  }
  else
  {
    PWR->CR |= PWR_Regulator_Voltage_Scale1;
  }
}
