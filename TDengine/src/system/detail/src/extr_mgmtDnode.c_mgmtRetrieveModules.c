
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {char* name; } ;
struct TYPE_9__ {size_t status; int privateIp; } ;
struct TYPE_8__ {int* offset; int* bytes; int numOfReads; int pNode; } ;
typedef TYPE_1__ SShowObj ;
typedef TYPE_2__ SDnodeObj ;
typedef int SConnObj ;


 int TSDB_MOD_MAX ;
 int mgmtCheckModuleInDnode (TYPE_2__*,int) ;
 int mgmtGetNextDnode (TYPE_1__*,TYPE_2__**) ;
 char** sdbDnodeStatusStr ;
 int strcpy (char*,char*) ;
 int tinet_ntoa (char*,int ) ;
 TYPE_3__* tsModule ;

int mgmtRetrieveModules(SShowObj *pShow, char *data, int rows, SConnObj *pConn) {
  int numOfRows = 0;
  SDnodeObj *pDnode = ((void*)0);
  char * pWrite;
  int cols = 0;
  char ipstr[20];

  while (numOfRows < rows) {
    pShow->pNode = mgmtGetNextDnode(pShow, (SDnodeObj **)&pDnode);
    if (pDnode == ((void*)0)) break;

    for (int moduleType = 0; moduleType < TSDB_MOD_MAX; ++moduleType) {
      if (!mgmtCheckModuleInDnode(pDnode, moduleType)) {
        continue;
      }

      cols = 0;

      tinet_ntoa(ipstr, pDnode->privateIp);
      pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
      strcpy(pWrite, ipstr);
      cols++;

      pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
      strcpy(pWrite, tsModule[moduleType].name);
      cols++;

      pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
      strcpy(pWrite, sdbDnodeStatusStr[pDnode->status]);
      cols++;

      numOfRows++;
    }
  }

  pShow->numOfReads += numOfRows;
  return numOfRows;
}
