
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int SRes ;
typedef int CSzData ;


 int RINOK (int ) ;
 int SzReadNumber (int *,int *) ;
 int SzSkeepDataSize (int *,int ) ;

__attribute__((used)) static SRes SzSkeepData(CSzData *sd)
{
   uint64_t size;
   RINOK(SzReadNumber(sd, &size));
   return SzSkeepDataSize(sd, size);
}
