
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pSql; struct TYPE_2__* signature; } ;
typedef int TAOS ;
typedef TYPE_1__ STscObj ;


 int taos_num_fields (int ) ;

int taos_field_count(TAOS *taos) {
  STscObj *pObj = (STscObj *)taos;
  if (pObj == ((void*)0) || pObj->signature != pObj) return 0;

  return taos_num_fields(pObj->pSql);
}
