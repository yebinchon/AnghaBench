
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
typedef int int16_t ;
struct TYPE_13__ {scalar_t__ ip; scalar_t__ publicIp; int vnode; } ;
struct TYPE_12__ {TYPE_1__* pDb; } ;
struct TYPE_11__ {int* offset; int* bytes; int numOfReads; void* pNode; } ;
struct TYPE_10__ {int numOfVnodes; TYPE_8__* vnodeGid; scalar_t__ lbState; int numOfMeters; int vgId; struct TYPE_10__* next; } ;
struct TYPE_9__ {TYPE_2__* pHead; } ;
typedef TYPE_2__ SVgObj ;
typedef TYPE_3__ SShowObj ;
typedef TYPE_4__ SConnObj ;


 int mgmtCheckVnodeReady (int *,TYPE_2__*,TYPE_8__*) ;
 int strcpy (char*,char*) ;
 int tinet_ntoa (char*,scalar_t__) ;

int mgmtRetrieveVgroups(SShowObj *pShow, char *data, int rows, SConnObj *pConn) {
  int numOfRows = 0;
  SVgObj *pVgroup = ((void*)0);
  char * pWrite;
  int cols = 0;
  char ipstr[20];

  int maxReplica = 0;
  pVgroup = pConn->pDb->pHead;
  while (pVgroup != ((void*)0)) {
    maxReplica = pVgroup->numOfVnodes > maxReplica ? pVgroup->numOfVnodes : maxReplica;
    pVgroup = pVgroup->next;
  }

  while (numOfRows < rows) {

    pVgroup = (SVgObj *)pShow->pNode;
    if (pVgroup == ((void*)0)) break;
    pShow->pNode = (void *)pVgroup->next;

    cols = 0;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    *(int32_t *)pWrite = pVgroup->vgId;
    cols++;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    *(int32_t *)pWrite = pVgroup->numOfMeters;
    cols++;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    strcpy(pWrite, pVgroup->lbState ? "updating" : "ready");
    cols++;

    for (int i = 0; i < maxReplica; ++i) {
      tinet_ntoa(ipstr, pVgroup->vnodeGid[i].ip);
      pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
      strcpy(pWrite, ipstr);
      cols++;

      pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
      *(int16_t *)pWrite = pVgroup->vnodeGid[i].vnode;
      cols++;

      pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
      if (pVgroup->vnodeGid[i].ip != 0) {
        bool ready = mgmtCheckVnodeReady(((void*)0), pVgroup, pVgroup->vnodeGid + i);
        strcpy(pWrite, ready ? "ready" : "unsynced");
      } else {
        strcpy(pWrite, "null");
      }
      cols++;

      tinet_ntoa(ipstr, pVgroup->vnodeGid[i].publicIp);
      pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
      strcpy(pWrite, ipstr);
      cols++;
    }

    numOfRows++;
  }

  pShow->numOfReads += numOfRows;
  return numOfRows;
}
