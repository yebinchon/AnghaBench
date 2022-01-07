
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DeviceName; } ;
typedef TYPE_1__ RPC_DELETE_DEVICE ;
typedef int PACK ;


 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcDeleteDevice(RPC_DELETE_DEVICE *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_DELETE_DEVICE));
 PackGetStr(p, "DeviceName", t->DeviceName, sizeof(t->DeviceName));
}
