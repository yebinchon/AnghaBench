
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ICR; } ;


 int IS_SDIO_CLEAR_FLAG (int ) ;
 TYPE_1__* SDIO ;
 int assert_param (int ) ;

void SDIO_ClearFlag(uint32_t SDIO_FLAG)
{

  assert_param(IS_SDIO_CLEAR_FLAG(SDIO_FLAG));

  SDIO->ICR = SDIO_FLAG;
}
