
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_bits_t ;
typedef int hid_null_instance_t ;



__attribute__((used)) static void hid_null_get_buttons(void *data, input_bits_t *state)
{
   hid_null_instance_t *instance = (hid_null_instance_t *)data;
   if (!instance)
      return;


}
