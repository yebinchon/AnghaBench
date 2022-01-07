
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int* offset; int* bytes; int numOfReads; void* pNode; } ;
struct TYPE_4__ {char* user; int createdTime; scalar_t__ writeAuth; scalar_t__ superAuth; scalar_t__ next; } ;
typedef TYPE_1__ SUserObj ;
typedef TYPE_2__ SShowObj ;
typedef int SConnObj ;


 int strcpy (char*,char*) ;

int mgmtRetrieveUsers(SShowObj *pShow, char *data, int rows, SConnObj *pConn) {
  int numOfRows = 0;
  SUserObj *pUser = ((void*)0);
  char * pWrite;
  int cols = 0;

  while (numOfRows < rows) {

    pUser = (SUserObj *)pShow->pNode;
    if (pUser == ((void*)0)) break;
    pShow->pNode = (void *)pUser->next;

    cols = 0;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    strcpy(pWrite, pUser->user);
    cols++;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    if (pUser->superAuth) {
      strcpy(pWrite, "super");
    } else if (pUser->writeAuth) {
      strcpy(pWrite, "write");
    } else {
      strcpy(pWrite, "read");
    }
    cols++;

    pWrite = data + pShow->offset[cols] * rows + pShow->bytes[cols] * numOfRows;
    *(int64_t *)pWrite = pUser->createdTime;
    cols++;

    numOfRows++;
  }
  pShow->numOfReads += numOfRows;
  return numOfRows;
}
