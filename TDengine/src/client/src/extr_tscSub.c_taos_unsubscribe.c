
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int taos; struct TYPE_3__* signature; } ;
typedef int TAOS_SUB ;
typedef TYPE_1__ SSub ;


 int free (TYPE_1__*) ;
 int taos_close (int ) ;

void taos_unsubscribe(TAOS_SUB *tsub) {
  SSub *pSub = (SSub *)tsub;

  if (pSub == ((void*)0)) return;
  if (pSub->signature != pSub) return;

  taos_close(pSub->taos);
  free(pSub);
}
