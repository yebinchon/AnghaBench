
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_int16_t ;


 scalar_t__ get_combining_class (scalar_t__) ;

__attribute__((used)) static void
prioritysort(u_int16_t* characters, int count)
{
 u_int32_t p1, p2;
 u_int16_t *ch1, *ch2;
 u_int16_t *end;
 int changes = 0;

 end = characters + count;
 do {
  changes = 0;
  ch1 = characters;
  ch2 = characters + 1;
  p2 = get_combining_class(*ch1);
  while (ch2 < end) {
   p1 = p2;
   p2 = get_combining_class(*ch2);
   if (p1 > p2 && p2 != 0) {
    u_int32_t tmp;

    tmp = *ch1;
    *ch1 = *ch2;
    *ch2 = tmp;
    changes = 1;
    p2 = p1;
   }
   ++ch1;
   ++ch2;
  }
 } while (changes);
}
