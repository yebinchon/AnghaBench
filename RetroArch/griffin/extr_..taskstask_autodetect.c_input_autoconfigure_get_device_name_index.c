
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* input_device_name_index ;

unsigned input_autoconfigure_get_device_name_index(unsigned i)
{
   return input_device_name_index[i];
}
