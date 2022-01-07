
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
typedef int __merge_compare_fn_t ;
struct TYPE_6__ {int numOfEntries; int totalEntries; int comparaFn; void* param; int * pNode; } ;
typedef int SLoserTreeNode ;
typedef TYPE_1__ SLoserTreeInfo ;


 int TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int TSDB_CODE_SUCCESS ;
 scalar_t__ calloc (int,int) ;
 int pError (char*) ;
 int printf (char*) ;
 int tLoserTreeAdjust (TYPE_1__*,int) ;
 int tLoserTreeDisplay (TYPE_1__*) ;
 int tLoserTreeInit (TYPE_1__*) ;

uint8_t tLoserTreeCreate(SLoserTreeInfo** pTree, int32_t numOfEntries, void* param, __merge_compare_fn_t compareFn) {
  int32_t totalEntries = numOfEntries << 1;

  *pTree = (SLoserTreeInfo*)calloc(1, sizeof(SLoserTreeInfo) + sizeof(SLoserTreeNode) * totalEntries);
  if ((*pTree) == ((void*)0)) {
    pError("allocate memory for losertree failed. out of memory");
    return TSDB_CODE_CLI_OUT_OF_MEMORY;
  }

  (*pTree)->pNode = (SLoserTreeNode*)(((char*)(*pTree)) + sizeof(SLoserTreeInfo));

  (*pTree)->numOfEntries = numOfEntries;
  (*pTree)->totalEntries = totalEntries;
  (*pTree)->param = param;
  (*pTree)->comparaFn = compareFn;


  tLoserTreeInit(*pTree);






  for (int32_t i = totalEntries - 1; i >= numOfEntries; i--) {
    tLoserTreeAdjust(*pTree, i);
  }







  return TSDB_CODE_SUCCESS;
}
