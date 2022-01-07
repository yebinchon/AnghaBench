
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GX_LOAD_CP_REG (int ,int ) ;

void GX_ClearVCacheMetric()
{
 GX_LOAD_CP_REG(0,0);
}
