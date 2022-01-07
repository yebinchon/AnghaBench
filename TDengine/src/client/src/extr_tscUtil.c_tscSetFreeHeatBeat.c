
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct TYPE_7__ {TYPE_1__ cmd; struct TYPE_7__* signature; } ;
struct TYPE_6__ {TYPE_3__* pHb; struct TYPE_6__* signature; } ;
typedef TYPE_2__ STscObj ;
typedef TYPE_3__ SSqlObj ;


 int TSDB_QUERY_TYPE_FREE_RESOURCE ;
 int assert (int) ;

void tscSetFreeHeatBeat(STscObj* pObj) {
  if (pObj == ((void*)0) || pObj->signature != pObj || pObj->pHb == ((void*)0)) {
    return;
  }

  SSqlObj* pHeatBeat = pObj->pHb;
  assert(pHeatBeat == pHeatBeat->signature);


  pHeatBeat->cmd.type = TSDB_QUERY_TYPE_FREE_RESOURCE;
}
