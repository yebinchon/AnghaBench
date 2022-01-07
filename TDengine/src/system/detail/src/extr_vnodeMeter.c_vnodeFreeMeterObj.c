
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ** meterList; } ;
struct TYPE_6__ {size_t vnode; size_t sid; int meterId; } ;
typedef TYPE_1__ SMeterObj ;


 int dTrace (char*,size_t,size_t,int ) ;
 int memset (int ,int ,int ) ;
 int tListLen (int ) ;
 int tfree (TYPE_1__*) ;
 int vnodeFreeCacheInfo (TYPE_1__*) ;
 TYPE_2__* vnodeList ;

void vnodeFreeMeterObj(SMeterObj *pObj) {
  if (pObj == ((void*)0)) return;

  dTrace("vid:%d sid:%d id:%s, meter is cleaned up", pObj->vnode, pObj->sid, pObj->meterId);

  vnodeFreeCacheInfo(pObj);
  if (vnodeList[pObj->vnode].meterList != ((void*)0)) {
    vnodeList[pObj->vnode].meterList[pObj->sid] = ((void*)0);
  }

  memset(pObj->meterId, 0, tListLen(pObj->meterId));
  tfree(pObj);
}
