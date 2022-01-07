
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_8__ {scalar_t__ (* GetPC ) (TYPE_1__*) ;} ;
struct TYPE_7__ {scalar_t__ cycles; } ;
typedef TYPE_1__ SH2_struct ;


 TYPE_6__* SH2Core ;
 int SH2Exec (TYPE_1__*,scalar_t__) ;
 scalar_t__ stub1 (TYPE_1__*) ;
 scalar_t__ stub2 (TYPE_1__*) ;

void SH2Step(SH2_struct *context)
{
   if (SH2Core)
   {
      u32 tmp = SH2Core->GetPC(context);


      SH2Exec(context, context->cycles+1);



      if (tmp == SH2Core->GetPC(context))
         SH2Exec(context, context->cycles+1);
   }
}
