
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tevIndMask; } ;


 int GX_LOAD_BP_REG (int) ;
 TYPE_1__* __gx ;

__attribute__((used)) static void __GX_SetIndirectMask(u32 mask)
{
 __gx->tevIndMask = ((__gx->tevIndMask&~0xff)|(mask&0xff));
 GX_LOAD_BP_REG(__gx->tevIndMask);
}
