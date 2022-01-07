
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* sversion; } ;
typedef int TAOS ;
typedef TYPE_1__ STscObj ;



char *taos_get_server_info(TAOS *taos) {
  STscObj *pObj = (STscObj *)taos;

  if (pObj == ((void*)0)) return ((void*)0);

  return pObj->sversion;
}
