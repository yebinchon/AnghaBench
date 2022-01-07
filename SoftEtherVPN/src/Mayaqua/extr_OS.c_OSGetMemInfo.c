
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* GetMemInfo ) (int *) ;} ;
typedef int MEMINFO ;


 TYPE_1__* os ;
 int stub1 (int *) ;

void OSGetMemInfo(MEMINFO *info)
{

 if (info == ((void*)0))
 {
  return;
 }

 os->GetMemInfo(info);
}
