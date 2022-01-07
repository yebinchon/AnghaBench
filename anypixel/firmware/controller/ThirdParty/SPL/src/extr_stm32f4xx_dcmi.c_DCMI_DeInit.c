
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CR; int IER; int ICR; int ESCR; int ESUR; int CWSTRTR; int CWSIZER; } ;


 TYPE_1__* DCMI ;

void DCMI_DeInit(void)
{
  DCMI->CR = 0x0;
  DCMI->IER = 0x0;
  DCMI->ICR = 0x1F;
  DCMI->ESCR = 0x0;
  DCMI->ESUR = 0x0;
  DCMI->CWSTRTR = 0x0;
  DCMI->CWSIZER = 0x0;
}
