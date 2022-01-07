
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {void* colId; void* bytes; int name; int type; } ;
struct TYPE_5__ {scalar_t__ schema; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SSchema ;


 void* htons (void*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void mgmtSetSchemaFromMeters(SSchema *pSchema, STabObj *pMeterObj, uint32_t numOfCols) {
  SSchema *pMeterSchema = (SSchema *)(pMeterObj->schema);
  for (int i = 0; i < numOfCols; ++i) {
    pSchema->type = pMeterSchema[i].type;
    strcpy(pSchema->name, pMeterSchema[i].name);
    pSchema->bytes = htons(pMeterSchema[i].bytes);
    pSchema->colId = htons(pMeterSchema[i].colId);
    pSchema++;
  }
}
