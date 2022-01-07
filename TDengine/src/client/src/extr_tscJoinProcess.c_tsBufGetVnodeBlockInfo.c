
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int info; } ;
struct TYPE_4__ {TYPE_3__* pData; int numOfVnodes; } ;
typedef int STSVnodeBlockInfo ;
typedef TYPE_1__ STSBuf ;


 int tsBufFindVnodeIndexFromId (TYPE_3__*,int ,int) ;

STSVnodeBlockInfo* tsBufGetVnodeBlockInfo(STSBuf* pTSBuf, int32_t vnodeId) {
  int32_t j = tsBufFindVnodeIndexFromId(pTSBuf->pData, pTSBuf->numOfVnodes, vnodeId);
  if (j == -1) {
    return ((void*)0);
  }

  return &pTSBuf->pData[j].info;
}
