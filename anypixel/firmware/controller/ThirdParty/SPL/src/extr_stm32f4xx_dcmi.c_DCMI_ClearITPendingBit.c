
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int ICR; } ;


 TYPE_1__* DCMI ;

void DCMI_ClearITPendingBit(uint16_t DCMI_IT)
{



  DCMI->ICR = DCMI_IT;
}
