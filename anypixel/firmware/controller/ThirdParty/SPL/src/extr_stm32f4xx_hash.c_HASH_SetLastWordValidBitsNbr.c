
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int STR; } ;


 TYPE_1__* HASH ;
 int HASH_STR_NBW ;
 int IS_HASH_VALIDBITSNUMBER (int ) ;
 int assert_param (int ) ;

void HASH_SetLastWordValidBitsNbr(uint16_t ValidNumber)
{

  assert_param(IS_HASH_VALIDBITSNUMBER(ValidNumber));


  HASH->STR &= ~(HASH_STR_NBW);
  HASH->STR |= ValidNumber;
}
