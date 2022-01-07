
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STopBotInfo ;
typedef int SQLFunctionCtx ;


 int buildTopBotStruct (int *,int *) ;
 int function_setup (int *) ;
 int * getTopBotOutputInfo (int *) ;

__attribute__((used)) static bool top_bottom_function_setup(SQLFunctionCtx *pCtx) {
  if (!function_setup(pCtx)) {
    return 0;
  }

  STopBotInfo *pInfo = getTopBotOutputInfo(pCtx);
  buildTopBotStruct(pInfo, pCtx);

  return 1;
}
