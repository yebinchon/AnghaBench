
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceGxmMultisampleMode ;


 int vita2d_init_internal (unsigned int,int ) ;

int vita2d_init_advanced_with_msaa(unsigned int temp_pool_size, SceGxmMultisampleMode msaa)
{
 return vita2d_init_internal(temp_pool_size, msaa);
}
