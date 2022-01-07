
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int ICR; } ;


 TYPE_1__* DCMI ;
 int IS_DCMI_CLEAR_FLAG (int ) ;
 int assert_param (int ) ;

void DCMI_ClearFlag(uint16_t DCMI_FLAG)
{

  assert_param(IS_DCMI_CLEAR_FLAG(DCMI_FLAG));




  DCMI->ICR = DCMI_FLAG;
}
