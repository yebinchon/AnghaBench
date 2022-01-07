
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int SR; } ;


 TYPE_1__* HASH ;
 int IS_HASH_CLEAR_FLAG (scalar_t__) ;
 int assert_param (int ) ;

void HASH_ClearFlag(uint16_t HASH_FLAG)
{

  assert_param(IS_HASH_CLEAR_FLAG(HASH_FLAG));


  HASH->SR = ~(uint32_t)HASH_FLAG;
}
