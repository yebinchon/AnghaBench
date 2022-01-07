
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {void* sqlLen; TYPE_2__* schema; void* numOfColumns; void* sversion; int timeStamp; int meterId; int uid; void* sid; void* vnode; } ;
struct TYPE_12__ {int bytes; int colId; int type; } ;
struct TYPE_9__ {int sid; } ;
struct TYPE_11__ {int numOfColumns; scalar_t__ pSql; int sversion; int createdTime; int meterId; int uid; TYPE_1__ gid; } ;
struct TYPE_10__ {void* colId; void* bytes; int type; } ;
typedef TYPE_3__ STabObj ;
typedef TYPE_4__ SSchema ;
typedef int SMColumn ;
typedef TYPE_5__ SCreateMsg ;


 int TSDB_METER_ID_LEN ;
 int htobe64 (int ) ;
 void* htonl (int ) ;
 void* htons (int) ;
 int memcpy (int ,int ,int ) ;
 TYPE_4__* mgmtGetMeterSchema (TYPE_3__*) ;
 int strcpy (char*,scalar_t__) ;
 int strlen (scalar_t__) ;

char *mgmtBuildCreateMeterIe(STabObj *pMeter, char *pMsg, int vnode) {
  SCreateMsg *pCreateMeter;

  pCreateMeter = (SCreateMsg *)pMsg;
  pCreateMeter->vnode = htons(vnode);
  pCreateMeter->sid = htonl(pMeter->gid.sid);
  pCreateMeter->uid = pMeter->uid;
  memcpy(pCreateMeter->meterId, pMeter->meterId, TSDB_METER_ID_LEN);


  pCreateMeter->timeStamp = htobe64(pMeter->createdTime);






  pCreateMeter->sversion = htonl(pMeter->sversion);
  pCreateMeter->numOfColumns = htons(pMeter->numOfColumns);
  SSchema *pSchema = mgmtGetMeterSchema(pMeter);

  for (int i = 0; i < pMeter->numOfColumns; ++i) {
    pCreateMeter->schema[i].type = pSchema[i].type;

    pCreateMeter->schema[i].bytes = htons(pSchema[i].bytes);
    pCreateMeter->schema[i].colId = htons(pSchema[i].colId);
  }

  pMsg = ((char *)(pCreateMeter->schema)) + pMeter->numOfColumns * sizeof(SMColumn);
  pCreateMeter->sqlLen = 0;

  if (pMeter->pSql) {
    int len = strlen(pMeter->pSql) + 1;
    pCreateMeter->sqlLen = htons(len);
    strcpy(pMsg, pMeter->pSql);
    pMsg += len;
  }

  return pMsg;
}
