
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int SRes ;
typedef int CSzData ;


 int RINOK (int ) ;
 int SZ_ERROR_UNSUPPORTED ;
 int SZ_OK ;
 int SzReaduint8_t (int *,scalar_t__*) ;

__attribute__((used)) static SRes SzReadSwitch(CSzData *sd)
{
   uint8_t external;
   RINOK(SzReaduint8_t(sd, &external));
   return (external == 0) ? SZ_OK: SZ_ERROR_UNSUPPORTED;
}
