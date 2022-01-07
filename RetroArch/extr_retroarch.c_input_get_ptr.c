
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_driver_t ;


 int * current_input ;

input_driver_t *input_get_ptr(void)
{
   return current_input;
}
