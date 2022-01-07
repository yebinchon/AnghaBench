
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CheckAvailableVersion (int) ;
 scalar_t__ CheckInstalledVersion (int) ;
 int CitusHasBeenLoaded () ;
 int EnableVersionChecks ;
 int citusVersionKnownCompatible ;

bool
CheckCitusVersion(int elevel)
{
 if (citusVersionKnownCompatible ||
  !CitusHasBeenLoaded() ||
  !EnableVersionChecks)
 {
  return 1;
 }

 if (CheckAvailableVersion(elevel) && CheckInstalledVersion(elevel))
 {
  citusVersionKnownCompatible = 1;
  return 1;
 }
 else
 {
  return 0;
 }
}
