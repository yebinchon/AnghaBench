
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef int int16_t ;
struct TYPE_3__ {size_t numOfParams; int * param; } ;
typedef TYPE_1__ SSqlExpr ;


 int assert (int) ;
 int tVariantCreateFromBinary (int *,char*,scalar_t__,scalar_t__) ;

void addExprParams(SSqlExpr* pExpr, char* argument, int32_t type, int32_t bytes, int16_t tableIndex) {
  if (pExpr == ((void*)0) || argument == ((void*)0) || bytes == 0) {
    return;
  }



  tVariantCreateFromBinary(&pExpr->param[pExpr->numOfParams], argument, bytes, type);

  pExpr->numOfParams += 1;
  assert(pExpr->numOfParams <= 3);
}
