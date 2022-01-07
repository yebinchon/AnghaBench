
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {int usedIndex; TYPE_3__* pQuery; } ;
struct TYPE_9__ {TYPE_2__* pSidSet; TYPE_1__ runtimeEnv; } ;
struct TYPE_8__ {int pGroupbyExpr; } ;
struct TYPE_7__ {int numOfSubSet; } ;
typedef TYPE_3__ SQuery ;
typedef TYPE_4__ SMeterQuerySupportObj ;


 scalar_t__ isGroupbyNormalCol (int ) ;

__attribute__((used)) static int32_t getSubsetNumber(SMeterQuerySupportObj *pSupporter) {
  SQuery *pQuery = pSupporter->runtimeEnv.pQuery;

  int32_t totalSubset = 0;
  if (isGroupbyNormalCol(pQuery->pGroupbyExpr)) {
    totalSubset = pSupporter->runtimeEnv.usedIndex;
  } else {
    totalSubset = pSupporter->pSidSet->numOfSubSet;
  }

  return totalSubset;
}
