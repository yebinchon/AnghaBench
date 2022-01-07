
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tFilePage ;
struct TYPE_5__ {int hasUnprocessedRow; } ;
typedef int SSqlCmd ;
typedef TYPE_1__ SLocalReducer ;


 int doExecuteSecondaryMerge (int *,TYPE_1__*,int) ;
 int savePreviousRow (TYPE_1__*,int *) ;

__attribute__((used)) static void handleUnprocessedRow(SSqlCmd* pCmd, SLocalReducer *pLocalReducer, tFilePage *tmpBuffer) {
  if (pLocalReducer->hasUnprocessedRow) {
    pLocalReducer->hasUnprocessedRow = 0;
    doExecuteSecondaryMerge(pCmd, pLocalReducer, 1);
    savePreviousRow(pLocalReducer, tmpBuffer);
  }
}
