
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Header; struct TYPE_4__* Data; } ;
typedef TYPE_1__ TUBEDATA ;


 int Free (TYPE_1__*) ;

void FreeTubeData(TUBEDATA *d)
{

 if (d == ((void*)0))
 {
  return;
 }

 Free(d->Data);
 Free(d->Header);

 Free(d);
}
