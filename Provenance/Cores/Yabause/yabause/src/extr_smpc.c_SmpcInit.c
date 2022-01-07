
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {int clocksync; scalar_t__ basetime; void* regionid; void* regionsetting; } ;
typedef TYPE_1__ SmpcInternal ;
typedef int Smpc ;


 TYPE_1__* SmpcInternalVars ;
 int * SmpcRegs ;
 void** SmpcRegsT ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ time (int *) ;

int SmpcInit(u8 regionid, int clocksync, u32 basetime) {
   if ((SmpcRegsT = (u8 *) calloc(1, sizeof(Smpc))) == ((void*)0))
      return -1;

   SmpcRegs = (Smpc *) SmpcRegsT;

   if ((SmpcInternalVars = (SmpcInternal *) calloc(1, sizeof(SmpcInternal))) == ((void*)0))
      return -1;

   SmpcInternalVars->regionsetting = regionid;
   SmpcInternalVars->regionid = regionid;
   SmpcInternalVars->clocksync = clocksync;
   SmpcInternalVars->basetime = basetime ? basetime : time(((void*)0));

   return 0;
}
