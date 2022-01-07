
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



void Cs2FADToMSF(u32 val, u8 *m, u8 *s, u8 *f)
{
   u32 temp;
   m[0] = val / 4500;
   temp = val % 4500;
   s[0] = temp / 75;
   f[0] = temp % 75;
}
