
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_size; } ;
typedef int int32_t ;
struct TYPE_7__ {int rowSize; TYPE_1__** sdata; } ;
struct TYPE_8__ {TYPE_2__ query; int * pMeterQuerySupporter; } ;
struct TYPE_6__ {int data; } ;
typedef TYPE_2__ SQuery ;
typedef TYPE_3__ SQInfo ;


 int dError (char*,TYPE_3__*,int ,int ) ;
 int errno ;
 scalar_t__ isTSCompQuery (TYPE_2__*) ;
 scalar_t__ stat (int ,struct stat*) ;
 int strerror (int ) ;

int32_t vnodeGetResultSize(void *thandle, int32_t *numOfRows) {
  SQInfo *pQInfo = (SQInfo *)thandle;
  SQuery *pQuery = &pQInfo->query;







  if (pQInfo->pMeterQuerySupporter != ((void*)0) && isTSCompQuery(pQuery) && (*numOfRows) > 0) {
    struct stat fstat;
    if (stat(pQuery->sdata[0]->data, &fstat) == 0) {
      *numOfRows = fstat.st_size;
      return fstat.st_size;
    } else {
      dError("QInfo:%p failed to get file info, path:%s, reason:%s", pQInfo, pQuery->sdata[0]->data, strerror(errno));
      return 0;
    }
  } else {
    return pQInfo->query.rowSize * (*numOfRows);
  }
}
