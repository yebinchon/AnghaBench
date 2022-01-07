
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_2__ {int state; } ;


 TYPE_1__* __dvd_executing ;
 int __dvd_statecoverclosed () ;
 scalar_t__* _diReg ;

__attribute__((used)) static void __dvd_statemotorstoppedcb(s32 result)
{
 _diReg[1] = 0;
 __dvd_executing->state = 3;
 __dvd_statecoverclosed();
}
