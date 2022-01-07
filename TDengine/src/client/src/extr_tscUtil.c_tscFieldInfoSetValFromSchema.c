
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_8__ {scalar_t__ numOfOutputCols; int * pFields; } ;
struct TYPE_7__ {int bytes; int name; int type; } ;
typedef int TAOS_FIELD ;
typedef TYPE_1__ SSchema ;
typedef TYPE_2__ SFieldInfo ;


 int ensureSpace (TYPE_2__*,scalar_t__) ;
 int evic (TYPE_2__*,size_t) ;
 int setValueImpl (int *,int ,int ,int ) ;

void tscFieldInfoSetValFromSchema(SFieldInfo* pFieldInfo, int32_t index, SSchema* pSchema) {
  ensureSpace(pFieldInfo, pFieldInfo->numOfOutputCols + 1);
  evic(pFieldInfo, index);

  TAOS_FIELD* pField = &pFieldInfo->pFields[index];
  setValueImpl(pField, pSchema->type, pSchema->name, pSchema->bytes);
  pFieldInfo->numOfOutputCols++;
}
