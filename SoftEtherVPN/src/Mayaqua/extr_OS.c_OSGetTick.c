
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int (* GetTick ) () ;} ;


 TYPE_1__* os ;
 int stub1 () ;

UINT OSGetTick()
{
 return os->GetTick();
}
