
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int SRes ;
typedef int CSzData ;


 int RINOK (int ) ;
 int SZ_OK ;
 int SzReaduint8_t (int *,int *) ;

__attribute__((used)) static SRes SzReaduint8_ts(CSzData *sd, uint8_t *data, size_t size)
{
   size_t i;
   for (i = 0; i < size; i++)
   {
      RINOK(SzReaduint8_t(sd, data + i));
   }
   return SZ_OK;
}
