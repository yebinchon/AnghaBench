
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* SendInterrupt ) (int *,int ,int ) ;} ;
typedef int SH2_struct ;


 TYPE_1__* SH2Core ;
 int stub1 (int *,int ,int ) ;

void SH2SendInterrupt(SH2_struct *context, u8 vector, u8 level)
{
   SH2Core->SendInterrupt(context, vector, level);
}
