
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n; int z; int type; } ;
typedef TYPE_1__ SSQLToken ;



void setDBName(SSQLToken *pCpxName, SSQLToken *pDB) {
  pCpxName->type = pDB->type;
  pCpxName->z = pDB->z;
  pCpxName->n = pDB->n;
}
