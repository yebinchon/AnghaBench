
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int order; } ;
struct TYPE_13__ {int autoDelete; int tsOrder; TYPE_1__ cur; int numOfVnodes; int * f; int path; } ;
struct TYPE_12__ {int tsOrder; int numOfVnode; int magic; } ;
typedef TYPE_2__ STSBufFileHeader ;
typedef TYPE_3__ STSBuf ;


 int STSBufUpdateHeader (TYPE_3__*,TYPE_2__*) ;
 int TSQL_SO_ASC ;
 int TS_COMP_FILE_MAGIC ;
 int allocResForTSBuf (TYPE_3__*) ;
 TYPE_3__* calloc (int,int) ;
 int * fopen (int ,char*) ;
 int free (TYPE_3__*) ;
 int getTmpfilePath (char*,int ) ;
 int tsBufResetPos (TYPE_3__*) ;

STSBuf* tsBufCreate(bool autoDelete) {
  STSBuf* pTSBuf = calloc(1, sizeof(STSBuf));
  if (pTSBuf == ((void*)0)) {
    return ((void*)0);
  }

  getTmpfilePath("join", pTSBuf->path);
  pTSBuf->f = fopen(pTSBuf->path, "w+");
  if (pTSBuf->f == ((void*)0)) {
    free(pTSBuf);
    return ((void*)0);
  }

  allocResForTSBuf(pTSBuf);


  STSBufFileHeader header = {.magic = TS_COMP_FILE_MAGIC, .numOfVnode = pTSBuf->numOfVnodes, .tsOrder = TSQL_SO_ASC};
  STSBufUpdateHeader(pTSBuf, &header);

  tsBufResetPos(pTSBuf);
  pTSBuf->cur.order = TSQL_SO_ASC;

  pTSBuf->autoDelete = autoDelete;
  pTSBuf->tsOrder = -1;

  return pTSBuf;
}
