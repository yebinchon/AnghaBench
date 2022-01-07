
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ data; } ;
typedef TYPE_2__ tFilePage ;
typedef size_t int32_t ;
struct TYPE_8__ {int* offset; int numOfRowsPerPage; TYPE_1__* pCtx; } ;
struct TYPE_6__ {size_t outputBytes; } ;
typedef TYPE_3__ SQueryRuntimeEnv ;


 size_t DEFAULT_INTERN_BUF_SIZE ;
 int assert (int) ;

__attribute__((used)) static char *getOutputResPos(SQueryRuntimeEnv *pRuntimeEnv, tFilePage *pData, int32_t row, int32_t col) {

  assert(pRuntimeEnv->pCtx[col].outputBytes <= DEFAULT_INTERN_BUF_SIZE);

  return (char *)pData->data + pRuntimeEnv->offset[col] * pRuntimeEnv->numOfRowsPerPage +
         pRuntimeEnv->pCtx[col].outputBytes * row;
}
