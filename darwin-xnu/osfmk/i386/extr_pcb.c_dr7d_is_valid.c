
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int boolean_t ;


 int CR4_DE ;
 int FALSE ;
 int TRUE ;
 int get_cr4 () ;

__attribute__((used)) static boolean_t
dr7d_is_valid(uint32_t *dr7d)
{
 int i;
 uint32_t mask1, mask2;





 if (!(get_cr4() & CR4_DE))
  for (i = 0, mask1 = 0x3<<16, mask2 = 0x2<<16; i < 4;
    i++, mask1 <<= 4, mask2 <<= 4)
   if ((*dr7d & mask1) == mask2)
    return (FALSE);






 for (i = 0; i < 4; i++)
  if (((((*dr7d >> (16 + i*4))) & 0x3) == 0) &&
    ((((*dr7d >> (18 + i*4))) & 0x3) != 0))
   return (FALSE);




 *dr7d |= 0x1 << 10;
 *dr7d &= ~(0x1 << 11);
 *dr7d &= ~(0x1 << 12);
 *dr7d &= ~(0x1 << 14);
 *dr7d &= ~(0x1 << 15);





 if (*dr7d & 0x2)
  return (FALSE);

 if (*dr7d & (0x2<<2))
  return (FALSE);

 if (*dr7d & (0x2<<4))
  return (FALSE);

 if (*dr7d & (0x2<<6))
  return (FALSE);

 return (TRUE);
}
