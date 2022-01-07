
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxId; int numOfFree; } ;
typedef TYPE_1__ id_pool_t ;



int taosIdPoolNumOfUsed(void *handle) {
  id_pool_t *pIdPool = (id_pool_t *)handle;

  return pIdPool->maxId - pIdPool->numOfFree - 1;
}
