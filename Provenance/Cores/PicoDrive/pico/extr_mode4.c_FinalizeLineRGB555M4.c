
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dirtyPal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int FinalizeLine555 (int ,int) ;
 TYPE_2__ Pico ;
 int PicoDoHighPal555M4 () ;

__attribute__((used)) static void FinalizeLineRGB555M4(int line)
{
  if (Pico.m.dirtyPal)
    PicoDoHighPal555M4();



  FinalizeLine555(0, line);
}
