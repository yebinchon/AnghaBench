
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* uarb ;



__attribute__((used)) static int
uarb_cmp(uarb a, int adigits, uarb b, int bdigits)

{
   if (adigits < bdigits)
      return -1;

   if (adigits > bdigits)
      return 1;

   while (adigits-- > 0)
      if (a[adigits] < b[adigits])
         return -1;

      else if (a[adigits] > b[adigits])
         return 1;

   return 0;
}
