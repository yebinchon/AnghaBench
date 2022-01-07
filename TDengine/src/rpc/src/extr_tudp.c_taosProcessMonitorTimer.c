
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* pTimer; int ip; scalar_t__ dataLen; int data; TYPE_1__* pSet; } ;
struct TYPE_5__ {int tmrCtrl; int shandle; int (* fp ) (char*,scalar_t__,int ,int ,int ,int *,int *) ;int label; } ;
typedef TYPE_1__ SUdpConnSet ;
typedef TYPE_2__ SMonitor ;


 int free (TYPE_2__*) ;
 char* malloc (size_t) ;
 int memcpy (char*,int ,size_t) ;
 int stub1 (char*,scalar_t__,int ,int ,int ,int *,int *) ;
 int tTrace (char*,int ) ;
 int taosTmrReset (void (*) (void*,void*),int,TYPE_2__*,int ,void**) ;
 int taosTmrStopA (void**) ;

void taosProcessMonitorTimer(void *param, void *tmrId) {
  SMonitor *pMonitor = (SMonitor *)param;
  if (pMonitor->pTimer != tmrId) return;

  SUdpConnSet *pSet = pMonitor->pSet;
  pMonitor->pTimer = ((void*)0);

  if (pSet) {
    char *data = malloc((size_t)pMonitor->dataLen);
    memcpy(data, pMonitor->data, (size_t)pMonitor->dataLen);

    tTrace("%s monitor timer is expired, update the link status", pSet->label);
    (*pSet->fp)(data, pMonitor->dataLen, pMonitor->ip, 0, pSet->shandle, ((void*)0), ((void*)0));
    taosTmrReset(taosProcessMonitorTimer, 200, pMonitor, pSet->tmrCtrl, &pMonitor->pTimer);
  } else {
    taosTmrStopA(&pMonitor->pTimer);
    free(pMonitor);
  }
}
