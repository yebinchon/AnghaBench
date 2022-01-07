
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_7__ {scalar_t__ n; int z; } ;
struct TYPE_6__ {int bytes; int type; scalar_t__* name; } ;
typedef TYPE_1__ TAOS_FIELD ;
typedef TYPE_2__ SSQLToken ;


 int strncpy (scalar_t__*,int ,scalar_t__) ;

void tSQLSetColumnInfo(TAOS_FIELD *pField, SSQLToken *pName, TAOS_FIELD *pType) {
  int32_t maxLen = sizeof(pField->name) / sizeof(pField->name[0]);

  if (pName->n >= maxLen) {
    pName->n = maxLen - 1;
  }

  strncpy(pField->name, pName->z, pName->n);
  pField->name[pName->n] = 0;

  pField->type = pType->type;
  pField->bytes = pType->bytes;
}
