
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parameter_reset ;
 int vcos_assert (int*) ;

__attribute__((used)) static int update_cycle_parameter(int *option, int min, int max, int increment)
{
   vcos_assert(option);
   if (!option)
      return 0;

   if (*option == parameter_reset)
      *option = min - increment;

   *option += increment;

   if (*option > max)
   {
      *option = parameter_reset;
      return 0;
   }
   else
      return 1;
}
