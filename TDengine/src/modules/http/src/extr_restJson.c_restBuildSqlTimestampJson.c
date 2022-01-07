
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS_RES ;
typedef int HttpSqlCmd ;
typedef int HttpContext ;


 int REST_TIMESTAMP_FMT_TIMESTAMP ;
 int restBuildSqlJson (int *,int *,int *,int,int ) ;

bool restBuildSqlTimestampJson(HttpContext *pContext, HttpSqlCmd *cmd, TAOS_RES *result, int numOfRows) {
  return restBuildSqlJson(pContext,cmd, result, numOfRows, REST_TIMESTAMP_FMT_TIMESTAMP);
}
