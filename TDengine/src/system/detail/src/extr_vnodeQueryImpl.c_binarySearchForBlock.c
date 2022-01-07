
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
typedef int int32_t ;
struct TYPE_4__ {int order; } ;
struct TYPE_5__ {TYPE_1__ order; int numOfBlocks; int pBlock; } ;
typedef TYPE_2__ SQuery ;


 int binarySearchForBlockImpl (int ,int ,int ,int ) ;

__attribute__((used)) static int32_t binarySearchForBlock(SQuery *pQuery, int64_t key) {
  return binarySearchForBlockImpl(pQuery->pBlock, pQuery->numOfBlocks, key, pQuery->order.order);
}
