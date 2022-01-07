
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_9__ {scalar_t__ numOfOutputCols; TYPE_1__** sdata; int * pSelectExpr; } ;
struct TYPE_10__ {TYPE_2__ query; } ;
struct TYPE_8__ {int data; } ;
typedef TYPE_2__ SQuery ;
typedef TYPE_3__ SQInfo ;


 int O_RDONLY ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ VALIDFD (int ) ;
 int assert (int) ;
 int close (int ) ;
 int dError (char*,TYPE_3__*,int ,int ) ;
 int dTrace (char*,TYPE_3__*,int ,int *) ;
 int doCopyQueryResultToMsg (TYPE_3__*,int ,char*,int *) ;
 int errno ;
 scalar_t__ isTSCompQuery (TYPE_2__*) ;
 size_t lseek (int ,int ,int ) ;
 int open (int ,int ,int) ;
 int read (int ,char*,size_t) ;
 int strerror (int ) ;
 int unlink (int ) ;

int32_t vnodeCopyQueryResultToMsg(void *handle, char *data, int32_t numOfRows, int32_t* size) {
  SQInfo *pQInfo = (SQInfo *)handle;
  SQuery * pQuery = &pQInfo->query;

  assert(pQuery->pSelectExpr != ((void*)0) && pQuery->numOfOutputCols > 0);


  if (isTSCompQuery(pQuery)) {
    int32_t fd = open(pQuery->sdata[0]->data, O_RDONLY, 0666);


    if (VALIDFD(fd)) {
      size_t s = lseek(fd, 0, SEEK_END);
      dTrace("QInfo:%p ts comp data return, file:%s, size:%ld", pQInfo, pQuery->sdata[0]->data, size);

      lseek(fd, 0, SEEK_SET);
      read(fd, data, s);
      close(fd);

      unlink(pQuery->sdata[0]->data);
    } else {
      dError("QInfo:%p failed to open tmp file to send ts-comp data to client, path:%s, reason:%s", pQInfo,
             pQuery->sdata[0]->data, strerror(errno));
    }
  } else {
    doCopyQueryResultToMsg(pQInfo, numOfRows, data, size);
  }

  return numOfRows;
}
