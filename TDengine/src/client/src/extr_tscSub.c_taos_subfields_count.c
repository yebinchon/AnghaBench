
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numOfFields; } ;
typedef int TAOS_SUB ;
typedef TYPE_1__ SSub ;



int taos_subfields_count(TAOS_SUB *tsub) {
  SSub *pSub = (SSub *)tsub;

  return pSub->numOfFields;
}
