
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HttpContext ;


 int TSDB_CODE_INVALID_SQL ;
 int httpSendErrorRespImp (int *,int,char*,int ,char*) ;
 int sprintf (char*,char*,char*) ;

void httpSendTaosdInvalidSqlErrorResp(HttpContext *pContext, char* errMsg) {
  int httpCode = 400;
  char temp[512] = {0};
  int len = sprintf(temp, "invalid SQL: %s", errMsg);

  for (int i = 0; i < len; ++i) {
    if (temp[i] == '\"') {
      temp[i] = '\'';
    } else if (temp[i] == '\n') {
        temp[i] = ' ';
    } else {}
  }

  httpSendErrorRespImp(pContext, httpCode, "Bad Request", TSDB_CODE_INVALID_SQL, temp);
}
