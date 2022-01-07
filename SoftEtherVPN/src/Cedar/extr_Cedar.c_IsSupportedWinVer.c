
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IsWindows; int IsNT; int VerMajor; int VerMinor; int ServicePack; scalar_t__ IsBeta; } ;
typedef TYPE_1__ RPC_WINVER ;



bool IsSupportedWinVer(RPC_WINVER *v)
{

 if (v == ((void*)0))
 {
  return 0;
 }

 if (v->IsWindows == 0)
 {
  return 1;
 }

 if (v->IsNT == 0)
 {
  return 1;
 }

 if (v->IsBeta)
 {
  return 1;
 }

 if (v->VerMajor <= 4)
 {

  return 1;
 }

 if (v->VerMajor == 5 && v->VerMinor == 0)
 {

  if (v->ServicePack <= 4)
  {

   return 1;
  }
 }

 if (v->VerMajor == 5 && v->VerMinor == 1)
 {

  if (v->ServicePack <= 3)
  {

   return 1;
  }
 }

 if (v->VerMajor == 5 && v->VerMinor == 2)
 {

  if (v->ServicePack <= 2)
  {

   return 1;
  }
 }

 if (v->VerMajor == 6 && v->VerMinor == 0)
 {

  if (v->ServicePack <= 2)
  {

   return 1;
  }
 }

 if (v->VerMajor == 6 && v->VerMinor == 1)
 {

  if (v->ServicePack <= 1)
  {

   return 1;
  }
 }

 if (v->VerMajor == 6 && v->VerMinor == 2)
 {

  if (v->ServicePack <= 0)
  {

   return 1;
  }
 }

 if (v->VerMajor == 6 && v->VerMinor == 3)
 {

  if (v->ServicePack <= 0)
  {

   return 1;
  }
 }

 if ((v->VerMajor == 6 && v->VerMinor == 4) || (v->VerMajor == 10 && v->VerMinor == 0))
 {

  if (v->ServicePack <= 0)
  {

   return 1;
  }
 }

 return 0;
}
