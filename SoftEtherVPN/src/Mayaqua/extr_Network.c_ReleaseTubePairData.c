
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Ref; } ;
typedef TYPE_1__ TUBEPAIR_DATA ;


 int CleanupTubePairData (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseTubePairData(TUBEPAIR_DATA *d)
{

 if (d == ((void*)0))
 {
  return;
 }

 if (Release(d->Ref) == 0)
 {
  CleanupTubePairData(d);
 }
}
