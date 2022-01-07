
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int NumClasses; int const* Classes; } ;
typedef TYPE_1__ MCRegisterInfo ;
typedef int MCRegisterClass ;



const MCRegisterClass* MCRegisterInfo_getRegClass(const MCRegisterInfo *RI, unsigned i)
{

 if (i >= RI->NumClasses)
  return 0;
 return &(RI->Classes[i]);
}
