#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct AuxData {void* pAux; void (* xDelete ) (void*) ;} ;
struct TYPE_8__ {TYPE_6__* db; } ;
struct TYPE_9__ {int /*<<< orphan*/  pFunc; TYPE_3__* pVdbeFunc; TYPE_1__ s; } ;
typedef  TYPE_2__ sqlite3_context ;
struct TYPE_10__ {int nAux; struct AuxData* apAux; int /*<<< orphan*/  pFunc; } ;
typedef  TYPE_3__ VdbeFunc ;
struct TYPE_11__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct AuxData*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC2 (TYPE_6__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void FUNC4 (void*) ; 

void FUNC5(
  sqlite3_context *pCtx, 
  int iArg, 
  void *pAux, 
  void (*xDelete)(void*)
){
  struct AuxData *pAuxData;
  VdbeFunc *pVdbeFunc;
  if( iArg<0 ) goto failed;

  FUNC0( FUNC3(pCtx->s.db->mutex) );
  pVdbeFunc = pCtx->pVdbeFunc;
  if( !pVdbeFunc || pVdbeFunc->nAux<=iArg ){
    int nAux = (pVdbeFunc ? pVdbeFunc->nAux : 0);
    int nMalloc = sizeof(VdbeFunc) + sizeof(struct AuxData)*iArg;
    pVdbeFunc = FUNC2(pCtx->s.db, pVdbeFunc, nMalloc);
    if( !pVdbeFunc ){
      goto failed;
    }
    pCtx->pVdbeFunc = pVdbeFunc;
    FUNC1(&pVdbeFunc->apAux[nAux], 0, sizeof(struct AuxData)*(iArg+1-nAux));
    pVdbeFunc->nAux = iArg+1;
    pVdbeFunc->pFunc = pCtx->pFunc;
  }

  pAuxData = &pVdbeFunc->apAux[iArg];
  if( pAuxData->pAux && pAuxData->xDelete ){
    pAuxData->xDelete(pAuxData->pAux);
  }
  pAuxData->pAux = pAux;
  pAuxData->xDelete = xDelete;
  return;

failed:
  if( xDelete ){
    xDelete(pAux);
  }
}