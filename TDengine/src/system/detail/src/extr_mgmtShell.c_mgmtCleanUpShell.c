
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int connList ;
 int * pShellConn ;
 int taosCloseRpc (int *) ;
 int tfree (int ) ;

void mgmtCleanUpShell() {
  if (pShellConn) taosCloseRpc(pShellConn);
  pShellConn = ((void*)0);
  tfree(connList);
}
