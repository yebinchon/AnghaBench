
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int (* WaitEvent ) (int *,int ) ;} ;
typedef int EVENT ;


 TYPE_1__* os ;
 int stub1 (int *,int ) ;

bool OSWaitEvent(EVENT *event, UINT timeout)
{
 return os->WaitEvent(event, timeout);
}
