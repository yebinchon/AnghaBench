
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



int IsTOCValid(u32 *TOC)
{
   u8 lasttrack=1;
   int i;


   if ((TOC[0] & 0xFFFFFF) != 150)
      return 0;



   for (i = 1; i < 99; i++)
   {
      if (TOC[i] == 0xFFFFFFFF)
         break;

      lasttrack++;

      if ((TOC[i-1] & 0xFFFFFF) >= (TOC[i] & 0xFFFFFF))
         return 0;
   }


   if (TOC[99] & 0xFF)
      return 0;

   if (TOC[99] & 0xFF00)
      return 0;

   if (((TOC[99] & 0xFF0000) >> 16) != 0x01)
      return 0;

   if ((TOC[99] & 0xFF000000) != (TOC[0] & 0xFF000000))
      return 0;


   if (TOC[100] & 0xFF)
      return 0;

   if (TOC[100] & 0xFF00)
      return 0;

   if (((TOC[100] & 0xFF0000) >> 16) != lasttrack)
      return 0;

   if ((TOC[100] & 0xFF000000) != (TOC[lasttrack-1] & 0xFF000000))
      return 0;


   if ((TOC[101] & 0xFFFFFF) <= (TOC[lasttrack-1] & 0xFFFFFF))
      return 0;

   if ((TOC[101] & 0xFF000000) != (TOC[lasttrack-1] & 0xFF000000))
      return 0;

   return 1;
}
