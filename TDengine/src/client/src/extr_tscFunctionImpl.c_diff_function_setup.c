
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* param; } ;
struct TYPE_5__ {int nType; } ;
typedef TYPE_2__ SQLFunctionCtx ;


 int INITIAL_VALUE_NOT_ASSIGNED ;
 scalar_t__ function_setup (TYPE_2__*) ;

__attribute__((used)) static bool diff_function_setup(SQLFunctionCtx *pCtx) {
  if (function_setup(pCtx)) {
    return 0;
  }


  pCtx->param[1].nType = INITIAL_VALUE_NOT_ASSIGNED;
  return 0;
}
