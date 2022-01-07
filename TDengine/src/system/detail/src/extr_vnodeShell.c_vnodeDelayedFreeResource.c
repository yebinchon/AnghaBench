
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32_t ;


 int pShellServer ;
 void** shellList ;
 int taosCloseRpcChann (int ,size_t) ;
 int tfree (void*) ;

__attribute__((used)) static void vnodeDelayedFreeResource(void *param, void *tmrId) {
  int32_t vnode = *(int32_t*) param;
  taosCloseRpcChann(pShellServer, vnode);
  tfree (shellList[vnode]);

  tfree(param);
}
