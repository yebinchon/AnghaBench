
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int const floor (double) ;

__attribute__((used)) static double digitize(double value, int depth, int do_round)
{






   const unsigned int digitization_factor = (1U << depth) -1;




   if (value <= 0)
      value = 0;

   else if (value >= 1)
      value = 1;

   value *= digitization_factor;
   if (do_round) value += .5;
   return floor(value)/digitization_factor;
}
