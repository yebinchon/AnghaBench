
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {int qhandle; } ;
struct TYPE_4__ {int maxSessions; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;


 int dTrace (char*,int) ;
 int* malloc (int) ;
 TYPE_3__** shellList ;
 int taosTmrStart (int ,int,int*,int ) ;
 int vnodeDelayedFreeResource ;
 int vnodeFreeQInfo (int ,int) ;
 TYPE_2__* vnodeList ;
 int vnodeTmrCtrl ;

void vnodeCloseShellVnode(int vnode) {
  if (shellList[vnode] == ((void*)0)) return;

  for (int i = 0; i < vnodeList[vnode].cfg.maxSessions; ++i) {
    vnodeFreeQInfo(shellList[vnode][i].qhandle, 1);
  }

  int32_t* v = malloc(sizeof(int32_t));
  *v = vnode;






  dTrace("vid:%d, free resources in 500ms", vnode);
  taosTmrStart(vnodeDelayedFreeResource, 500, v, vnodeTmrCtrl);
}
