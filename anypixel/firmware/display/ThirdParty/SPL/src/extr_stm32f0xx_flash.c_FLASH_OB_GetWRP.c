
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int WRPR; } ;


 TYPE_1__* FLASH ;

uint32_t FLASH_OB_GetWRP(void)
{

  return (uint32_t)(FLASH->WRPR);
}
