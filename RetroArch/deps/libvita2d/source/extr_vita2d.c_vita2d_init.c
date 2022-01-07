
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_TEMP_POOL_SIZE ;
 int SCE_GXM_MULTISAMPLE_NONE ;
 int vita2d_init_internal (int ,int ) ;

int vita2d_init()
{
 return vita2d_init_internal(DEFAULT_TEMP_POOL_SIZE, SCE_GXM_MULTISAMPLE_NONE);
}
