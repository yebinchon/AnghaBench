
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t s32 ;
struct TYPE_3__ {size_t flags; } ;
typedef TYPE_1__ exibus_priv ;


 TYPE_1__* eximap ;

s32 EXI_GetState(s32 nChn)
{
 exibus_priv *exi = &eximap[nChn];
 return exi->flags;
}
