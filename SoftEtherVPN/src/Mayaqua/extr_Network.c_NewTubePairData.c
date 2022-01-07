
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Lock; int Ref; } ;
typedef TYPE_1__ TUBEPAIR_DATA ;


 int NewLock () ;
 int NewRef () ;
 TYPE_1__* ZeroMalloc (int) ;

TUBEPAIR_DATA *NewTubePairData()
{
 TUBEPAIR_DATA *d = ZeroMalloc(sizeof(TUBEPAIR_DATA));

 d->Ref = NewRef();

 d->Lock = NewLock();

 return d;
}
