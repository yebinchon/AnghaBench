
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int outType; } ;
typedef TYPE_1__ SRpcConn ;



int taosGetOutType(void *thandle) {
  SRpcConn *pConn = (SRpcConn *)thandle;
  if (pConn == ((void*)0)) return -1;

  return pConn->outType;
}
