
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int aOutputBuf; } ;
struct TYPE_13__ {TYPE_1__* interResultBuf; } ;
struct TYPE_12__ {int path; } ;
struct TYPE_11__ {TYPE_2__* pTSBuf; } ;
typedef TYPE_1__ STSCompInfo ;
typedef TYPE_2__ STSBuf ;
typedef TYPE_3__ SResultInfo ;
typedef TYPE_4__ SQLFunctionCtx ;


 TYPE_3__* GET_RES_INFO (TYPE_4__*) ;
 int resetResultInfo (TYPE_3__*) ;
 int strcpy (int ,int ) ;
 int tsBufDestory (TYPE_2__*) ;
 int tsBufFlush (TYPE_2__*) ;

__attribute__((used)) static void ts_comp_finalize(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);

  STSCompInfo *pInfo = pResInfo->interResultBuf;
  STSBuf * pTSbuf = pInfo->pTSBuf;

  tsBufFlush(pTSbuf);
  strcpy(pCtx->aOutputBuf, pTSbuf->path);

  tsBufDestory(pTSbuf);
  resetResultInfo(GET_RES_INFO(pCtx));
}
