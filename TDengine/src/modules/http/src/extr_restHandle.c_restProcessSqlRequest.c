
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {char* nativSql; } ;
struct TYPE_8__ {char* pos; } ;
struct TYPE_9__ {TYPE_1__ data; } ;
struct TYPE_11__ {int * encodeMethod; int reqType; TYPE_3__ singleCmd; TYPE_2__ parser; int user; int ipstr; int fd; } ;
typedef TYPE_3__ HttpSqlCmd ;
typedef TYPE_4__ HttpContext ;


 int HTTP_NO_EXEC_USEDB ;
 int HTTP_NO_SQL_INPUT ;
 int HTTP_REQTYPE_SINGLE_SQL ;
 int REST_TIMESTAMP_FMT_LOCAL_STRING ;
 int REST_TIMESTAMP_FMT_TIMESTAMP ;
 int REST_TIMESTAMP_FMT_UTC_STRING ;
 scalar_t__ httpCheckUsedbSql (char*) ;
 int httpSendErrorResp (TYPE_4__*,int ) ;
 int httpTrace (char*,TYPE_4__*,int ,int ,int ) ;
 int restEncodeSqlLocalTimeStringMethod ;
 int restEncodeSqlTimestampMethod ;
 int restEncodeSqlUtcTimeStringMethod ;

bool restProcessSqlRequest(HttpContext* pContext, int timestampFmt) {
  httpTrace("context:%p, fd:%d, ip:%s, user:%s, process restful sql msg", pContext, pContext->fd, pContext->ipstr,
            pContext->user);

  char* sql = pContext->parser.data.pos;
  if (sql == ((void*)0)) {
    httpSendErrorResp(pContext, HTTP_NO_SQL_INPUT);
    return 0;
  }

  if (httpCheckUsedbSql(sql)) {
    httpSendErrorResp(pContext, HTTP_NO_EXEC_USEDB);
    return 0;
  }

  HttpSqlCmd* cmd = &(pContext->singleCmd);
  cmd->nativSql = sql;

  pContext->reqType = HTTP_REQTYPE_SINGLE_SQL;
  if (timestampFmt == REST_TIMESTAMP_FMT_LOCAL_STRING) {
    pContext->encodeMethod = &restEncodeSqlLocalTimeStringMethod;
  } else if (timestampFmt == REST_TIMESTAMP_FMT_TIMESTAMP) {
    pContext->encodeMethod = &restEncodeSqlTimestampMethod;
  } else if (timestampFmt == REST_TIMESTAMP_FMT_UTC_STRING) {
    pContext->encodeMethod = &restEncodeSqlUtcTimeStringMethod;
  }

  return 1;
}
