
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_6__ {scalar_t__ pointsRead; scalar_t__ pointsToRead; TYPE_1__* pGroupbyExpr; } ;
struct TYPE_7__ {int * pMeterQuerySupporter; TYPE_2__ query; } ;
struct TYPE_5__ {scalar_t__ orderType; } ;
typedef TYPE_2__ SQuery ;
typedef TYPE_3__ SQInfo ;
typedef int SOutputRes ;
typedef int SMeterQuerySupportObj ;


 scalar_t__ TSQL_SO_DESC ;
 int assert (int) ;
 scalar_t__ doCopyFromGroupBuf (int *,int *,scalar_t__) ;

void copyFromGroupBuf(SQInfo *pQInfo, SOutputRes *result) {
  SQuery * pQuery = &pQInfo->query;
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;

  int32_t orderType = (pQuery->pGroupbyExpr != ((void*)0)) ? pQuery->pGroupbyExpr->orderType : TSQL_SO_DESC;

  int32_t numOfResult = doCopyFromGroupBuf(pSupporter, result, orderType);

  pQuery->pointsRead += numOfResult;
  assert(pQuery->pointsRead <= pQuery->pointsToRead);
}
