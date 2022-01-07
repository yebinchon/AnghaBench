
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * HR; } ;
struct TYPE_4__ {int * Data; } ;
typedef TYPE_1__ HASH_MsgDigest ;


 TYPE_3__* HASH ;

void HASH_GetDigest(HASH_MsgDigest* HASH_MessageDigest)
{

  HASH_MessageDigest->Data[0] = HASH->HR[0];
  HASH_MessageDigest->Data[1] = HASH->HR[1];
  HASH_MessageDigest->Data[2] = HASH->HR[2];
  HASH_MessageDigest->Data[3] = HASH->HR[3];
  HASH_MessageDigest->Data[4] = HASH->HR[4];
}
