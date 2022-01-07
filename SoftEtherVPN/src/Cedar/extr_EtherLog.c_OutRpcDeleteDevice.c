
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DeviceName; } ;
typedef TYPE_1__ RPC_DELETE_DEVICE ;
typedef int PACK ;


 int PackAddStr (int *,char*,int ) ;

void OutRpcDeleteDevice(PACK *p, RPC_DELETE_DEVICE *t)
{

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "DeviceName", t->DeviceName);
}
