
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
typedef int int16_t ;
struct TYPE_7__ {size_t status; size_t lbState; int publicIp; int numOfFreeVnodes; int openVnodes; int createdTime; int privateIp; } ;
struct TYPE_6__ {int* offset; int* bytes; int numOfReads; int pNode; } ;
typedef TYPE_1__ SShowObj ;
typedef TYPE_2__ SDnodeObj ;
typedef int SConnObj ;


 int mgmtGetNextDnode (TYPE_1__*,TYPE_2__**) ;
 char** sdbDnodeBalanceStateStr ;
 char** sdbDnodeStatusStr ;
 int strcpy (char*,char*) ;
 int tinet_ntoa (char*,int ) ;

int mgmtRetrieveDnodes(SShowObj *pShow, char *data, int rows, SConnObj *pConn) {
  int numOfRows = 0;
  SDnodeObj *pDnode = ((void*)0);
  char * pWrite;
  int cols = 0;
  char ipstr[20];

  while (numOfRows < rows) {
    pShow->pNode = mgmtGetNextDnode(pShow, (SDnodeObj **)&pDnode);
    if (pDnode == ((void*)0)) break;

    cols = 0;

    tinet_ntoa(ipstr, pDnode->privateIp);
    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    strcpy(pWrite, ipstr);
    cols++;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    *(int64_t *)pWrite = pDnode->createdTime;
    cols++;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    *(int16_t *)pWrite = pDnode->openVnodes;
    cols++;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    *(int16_t *)pWrite = pDnode->numOfFreeVnodes;
    cols++;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    strcpy(pWrite, sdbDnodeStatusStr[pDnode->status]);
    cols++;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    strcpy(pWrite, sdbDnodeBalanceStateStr[pDnode->lbState]);
    cols++;

    tinet_ntoa(ipstr, pDnode->publicIp);
    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    strcpy(pWrite, ipstr);
    cols++;

    numOfRows++;
  }

  pShow->numOfReads += numOfRows;
  return numOfRows;
}
