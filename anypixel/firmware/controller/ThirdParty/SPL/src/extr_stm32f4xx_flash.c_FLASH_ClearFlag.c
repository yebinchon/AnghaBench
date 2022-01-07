
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int SR; } ;


 TYPE_1__* FLASH ;
 int IS_FLASH_CLEAR_FLAG (int ) ;
 int assert_param (int ) ;

void FLASH_ClearFlag(uint32_t FLASH_FLAG)
{

  assert_param(IS_FLASH_CLEAR_FLAG(FLASH_FLAG));


  FLASH->SR = FLASH_FLAG;
}
