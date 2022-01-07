
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sh2regs_struct ;
struct TYPE_2__ {int (* GetRegisters ) (int *,int *) ;} ;
typedef int SH2_struct ;


 TYPE_1__* SH2Core ;
 int stub1 (int *,int *) ;

void SH2GetRegisters(SH2_struct *context, sh2regs_struct * r)
{
   if (r != ((void*)0)) {
      SH2Core->GetRegisters(context, r);
   }
}
