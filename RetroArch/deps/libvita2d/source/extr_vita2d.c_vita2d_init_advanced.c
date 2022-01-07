
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCE_GXM_MULTISAMPLE_NONE ;
 int vita2d_init_internal (unsigned int,int ) ;

int vita2d_init_advanced(unsigned int temp_pool_size)
{
 return vita2d_init_internal(temp_pool_size, SCE_GXM_MULTISAMPLE_NONE);
}
