
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int array_size (int*) ;
 int* in_vk_keys_down ;

void in_vk_keyup(int kc)
{
 int i;
 for (i = 0; i < array_size(in_vk_keys_down); i++)
  if (in_vk_keys_down[i] == kc)
   in_vk_keys_down[i] = 0;
}
