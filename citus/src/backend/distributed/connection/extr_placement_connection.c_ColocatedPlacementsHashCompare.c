
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nodeId; scalar_t__ colocationGroupId; scalar_t__ representativeValue; } ;
typedef int Size ;
typedef TYPE_1__ ColocatedPlacementsHashKey ;



__attribute__((used)) static int
ColocatedPlacementsHashCompare(const void *a, const void *b, Size keysize)
{
 ColocatedPlacementsHashKey *ca = (ColocatedPlacementsHashKey *) a;
 ColocatedPlacementsHashKey *cb = (ColocatedPlacementsHashKey *) b;

 if (ca->nodeId != cb->nodeId ||
  ca->colocationGroupId != cb->colocationGroupId ||
  ca->representativeValue != cb->representativeValue)
 {
  return 1;
 }
 else
 {
  return 0;
 }
}
