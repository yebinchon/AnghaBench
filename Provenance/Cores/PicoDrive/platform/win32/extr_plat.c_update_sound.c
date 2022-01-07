
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int EmuOpt; } ;


 int DSoundUpdate (int ,int) ;
 int EOPT_NO_FRMLIMIT ;
 int PicoSkipFrame ;
 TYPE_1__ currentConfig ;
 int sndbuff ;

__attribute__((used)) static void update_sound(int len)
{

 if (PicoSkipFrame != 2)
  DSoundUpdate(sndbuff, (currentConfig.EmuOpt & EOPT_NO_FRMLIMIT) ? 0 : 1);
}
