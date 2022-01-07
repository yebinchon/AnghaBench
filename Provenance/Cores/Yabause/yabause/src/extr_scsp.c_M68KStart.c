
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Reset ) () ;} ;


 int IsM68KRunning ;
 TYPE_1__* M68K ;
 scalar_t__ savedcycles ;
 int stub1 () ;

void
M68KStart (void)
{
  M68K->Reset ();
  savedcycles = 0;
  IsM68KRunning = 1;
}
