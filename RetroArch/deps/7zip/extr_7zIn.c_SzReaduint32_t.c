
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int SRes ;
typedef int CSzData ;


 int RINOK (int ) ;
 int SZ_OK ;
 int SzReaduint8_t (int *,scalar_t__*) ;

__attribute__((used)) static SRes SzReaduint32_t(CSzData *sd, uint32_t *value)
{
   int i;
   *value = 0;
   for (i = 0; i < 4; i++)
   {
      uint8_t b;
      RINOK(SzReaduint8_t(sd, &b));
      *value |= ((uint32_t)(b) << (8 * i));
   }
   return SZ_OK;
}
