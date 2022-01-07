
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pShellServer ;
 int shellList ;
 int taosCloseRpc (scalar_t__) ;
 int tfree (int ) ;

void vnodeCleanUpShell() {
  if (pShellServer) taosCloseRpc(pShellServer);

  tfree(shellList);
}
