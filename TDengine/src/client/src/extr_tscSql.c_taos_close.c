
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pHb; struct TYPE_4__* signature; } ;
typedef int TAOS ;
typedef TYPE_1__ STscObj ;


 int tscCloseTscObj (TYPE_1__*) ;
 int tscSetFreeHeatBeat (TYPE_1__*) ;

void taos_close(TAOS *taos) {
  STscObj *pObj = (STscObj *)taos;

  if (pObj == ((void*)0)) return;
  if (pObj->signature != pObj) return;

  if (pObj->pHb != ((void*)0)) {
    tscSetFreeHeatBeat(pObj);
  } else {
    tscCloseTscObj(pObj);
  }
}
