
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int reqType; } ;
typedef TYPE_1__ HttpContext ;







 int httpCloseContextByApp (TYPE_1__*) ;
 int httpProcessHeartBeatCmd (TYPE_1__*) ;
 int httpProcessLoginCmd (TYPE_1__*) ;
 int httpProcessMultiSqlCmd (TYPE_1__*) ;
 int httpProcessSingleSqlCmd (TYPE_1__*) ;

void httpExecCmd(HttpContext *pContext) {
  switch (pContext->reqType) {
    case 131:
      httpProcessLoginCmd(pContext);
      break;
    case 128:
      httpProcessSingleSqlCmd(pContext);
      break;
    case 130:
      httpProcessMultiSqlCmd(pContext);
      break;
    case 132:
      httpProcessHeartBeatCmd(pContext);
      break;
    case 129:
      httpCloseContextByApp(pContext);
      break;
    default:
      httpCloseContextByApp(pContext);
      break;
  }
}
