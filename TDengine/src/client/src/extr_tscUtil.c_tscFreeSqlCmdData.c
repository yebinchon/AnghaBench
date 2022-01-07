
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pExprs; } ;
struct TYPE_5__ {int * tsBuf; TYPE_3__ colList; TYPE_3__ exprsInfo; int fieldsInfo; int tagCond; int pDataBlocks; } ;
typedef TYPE_1__ SSqlCmd ;


 int memset (TYPE_3__*,int ,int) ;
 int tfree (int ) ;
 int tsBufDestory (int *) ;
 int tscClearFieldInfo (int *) ;
 int tscColumnBaseInfoDestroy (TYPE_3__*) ;
 int tscDestroyBlockArrayList (int ) ;
 int tscTagCondRelease (int *) ;

void tscFreeSqlCmdData(SSqlCmd* pCmd) {
  pCmd->pDataBlocks = tscDestroyBlockArrayList(pCmd->pDataBlocks);

  tscTagCondRelease(&pCmd->tagCond);
  tscClearFieldInfo(&pCmd->fieldsInfo);

  tfree(pCmd->exprsInfo.pExprs);
  memset(&pCmd->exprsInfo, 0, sizeof(pCmd->exprsInfo));

  tscColumnBaseInfoDestroy(&pCmd->colList);
  memset(&pCmd->colList, 0, sizeof(pCmd->colList));

  if (pCmd->tsBuf != ((void*)0)) {
    tsBufDestory(pCmd->tsBuf);
    pCmd->tsBuf = ((void*)0);
  }
}
