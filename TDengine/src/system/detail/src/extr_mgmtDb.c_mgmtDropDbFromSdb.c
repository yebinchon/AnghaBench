
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int name; TYPE_1__* pMetric; scalar_t__ pHead; } ;
struct TYPE_7__ {int meterId; struct TYPE_7__* next; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SDbObj ;


 int dbSdb ;
 int mPrint (char*,int ) ;
 int mgmtDropMeter (TYPE_2__*,int ,int ) ;
 int mgmtDropVgroup (TYPE_2__*,scalar_t__) ;
 int sdbDeleteRow (int ,TYPE_2__*) ;

void mgmtDropDbFromSdb(SDbObj *pDb) {
  while (pDb->pHead) mgmtDropVgroup(pDb, pDb->pHead);

  STabObj *pMetric = pDb->pMetric;
  while (pMetric) {
    STabObj *pNext = pMetric->next;
    mgmtDropMeter(pDb, pMetric->meterId, 0);
    pMetric = pNext;
  }

  mPrint("db:%s all meters drop finished", pDb->name);
  sdbDeleteRow(dbSdb, pDb);
  mPrint("db:%s database drop finished", pDb->name);
}
