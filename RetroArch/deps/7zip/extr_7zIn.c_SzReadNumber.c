
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int SRes ;
typedef int CSzData ;


 int RINOK (int ) ;
 int SZ_OK ;
 int SzReaduint8_t (int *,int*) ;

__attribute__((used)) static SRes SzReadNumber(CSzData *sd, uint64_t *value)
{
   uint8_t firstuint8_t;
   uint8_t mask = 0x80;
   int i;
   RINOK(SzReaduint8_t(sd, &firstuint8_t));
   *value = 0;
   for (i = 0; i < 8; i++)
   {
      uint8_t b;
      if ((firstuint8_t & mask) == 0)
      {
         uint64_t highPart = firstuint8_t & (mask - 1);
         *value += (highPart << (8 * i));
         return SZ_OK;
      }
      RINOK(SzReaduint8_t(sd, &b));
      *value |= ((uint64_t)b << (8 * i));
      mask >>= 1;
   }
   return SZ_OK;
}
