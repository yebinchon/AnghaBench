
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ cmd; struct TYPE_5__* signature; } ;
typedef TYPE_2__ SSqlObj ;


 scalar_t__ TSDB_QUERY_TYPE_FREE_RESOURCE ;
 int assert (int) ;

bool tscShouldFreeHeatBeat(SSqlObj* pHb) {
  assert(pHb == pHb->signature);
  return pHb->cmd.type == TSDB_QUERY_TYPE_FREE_RESOURCE;
}
