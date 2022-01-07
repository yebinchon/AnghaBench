
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_8__ {int ip; int stime; int port; int user; } ;
struct TYPE_7__ {int numOfConns; int index; TYPE_3__* connInfo; } ;
struct TYPE_6__ {int* offset; int* bytes; int numOfReads; scalar_t__ pNode; } ;
typedef TYPE_1__ SShowObj ;
typedef TYPE_2__ SConnShow ;
typedef int SConnObj ;
typedef TYPE_3__ SConnInfo ;


 int htons (int ) ;
 int sprintf (char*,char*,int,int,int,int,int ) ;
 int strcpy (char*,int ) ;
 int tfree (TYPE_2__*) ;

int mgmtRetrieveConns(SShowObj *pShow, char *data, int rows, SConnObj *pConn) {
  int numOfRows = 0;
  char *pWrite;
  int cols = 0;

  SConnShow *pConnShow = (SConnShow *)pShow->pNode;

  if (rows > pConnShow->numOfConns - pConnShow->index) rows = pConnShow->numOfConns - pConnShow->index;

  while (numOfRows < rows) {
    SConnInfo *pNode = pConnShow->connInfo + pConnShow->index;
    cols = 0;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    strcpy(pWrite, pNode->user);
    cols++;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    uint32_t ip = pNode->ip;
    sprintf(pWrite, "%d.%d.%d.%d:%hu", ip & 0xFF, (ip >> 8) & 0xFF, (ip >> 16) & 0xFF, ip >> 24, htons(pNode->port));
    cols++;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    *(int64_t *)pWrite = pNode->stime;
    cols++;

    numOfRows++;
    pConnShow->index++;
  }

  if (numOfRows == 0) {
    tfree(pConnShow);
  }

  pShow->numOfReads += numOfRows;
  return numOfRows;
}
