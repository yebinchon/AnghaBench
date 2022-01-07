
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Admin; struct TYPE_4__* HubName; struct TYPE_4__* Rpc; int Lock; } ;
typedef TYPE_1__ WU_CONTEXT ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;

__attribute__((used)) static void WuFreeContext(WU_CONTEXT *context)
{
 DeleteLock(context->Admin->Rpc->Lock);
 Free(context->Admin->Rpc);
 Free(context->Admin->HubName);
 Free(context->Admin);
 Free(context);
}
