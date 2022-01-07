
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int repeat; scalar_t__ encoding_counter; scalar_t__ test_exhaustive; scalar_t__ test_uses_encoding; } ;
typedef TYPE_1__ png_modifier ;


 scalar_t__ modifier_total_encodings (TYPE_1__*) ;
 scalar_t__ random_mod (scalar_t__) ;

__attribute__((used)) static void
modifier_encoding_iterate(png_modifier *pm)
{
   if (!pm->repeat &&
      pm->test_uses_encoding)
   {
      if (pm->test_exhaustive)
      {
         if (++pm->encoding_counter >= modifier_total_encodings(pm))
            pm->encoding_counter = 0;
      }

      else
      {



         if (pm->encoding_counter == 0)
            pm->encoding_counter = random_mod(modifier_total_encodings(pm)-1)+1;
         else
            pm->encoding_counter = 0;
      }

      if (pm->encoding_counter > 0)
         pm->repeat = 1;
   }

   else if (!pm->repeat)
      pm->encoding_counter = 0;
}
