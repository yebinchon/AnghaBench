
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int cJSON ;
struct TYPE_14__ {char* pos; } ;
struct TYPE_17__ {TYPE_1__ data; } ;
struct TYPE_18__ {TYPE_2__* multiCmds; int * encodeMethod; int reqType; int ipstr; int fd; TYPE_4__ parser; } ;
struct TYPE_16__ {void* sql; void* cmdReturnType; void* cmdType; } ;
struct TYPE_15__ {int pos; } ;
typedef TYPE_3__ HttpSqlCmd ;
typedef TYPE_4__ HttpParser ;
typedef TYPE_5__ HttpContext ;


 int HTTP_BUFFER_SIZE ;
 void* HTTP_CMD_RETURN_TYPE_NO_RETURN ;
 void* HTTP_CMD_TYPE_CREATE_DB ;
 int HTTP_MAX_CMD_SIZE ;
 int HTTP_NO_ENOUGH_MEMORY ;
 int HTTP_NO_MSG_INPUT ;
 int HTTP_REQTYPE_MULTI_SQL ;
 int HTTP_TG_INVALID_JSON ;
 int HTTP_TG_METRICS_NULL ;
 int HTTP_TG_METRICS_SIZE ;
 int cJSON_Delete (int *) ;
 int * cJSON_GetArrayItem (int *,int) ;
 int cJSON_GetArraySize (int *) ;
 int * cJSON_GetObjectItem (int *,char*) ;
 int * cJSON_Parse (char*) ;
 void* httpAddToSqlCmdBuffer (TYPE_5__*,char*,char*) ;
 int httpMallocMultiCmds (TYPE_5__*,int,int ) ;
 TYPE_3__* httpNewSqlCmd (TYPE_5__*) ;
 int httpSendErrorResp (TYPE_5__*,int ) ;
 int httpTrace (char*,TYPE_5__*,int ,int ,...) ;
 int tgProcessSingleMetric (TYPE_5__*,int *,char*) ;
 int tgQueryMethod ;

bool tgProcessQueryRequest(HttpContext *pContext, char *db) {
  httpTrace("context:%p, fd:%d, ip:%s, process telegraf query msg", pContext, pContext->fd, pContext->ipstr);

  HttpParser *pParser = &pContext->parser;
  char * filter = pParser->data.pos;
  if (filter == ((void*)0)) {
    httpSendErrorResp(pContext, HTTP_NO_MSG_INPUT);
    return 0;
  }

  cJSON *root = cJSON_Parse(filter);
  if (root == ((void*)0)) {
    httpSendErrorResp(pContext, HTTP_TG_INVALID_JSON);
    return 0;
  }

  cJSON *metrics = cJSON_GetObjectItem(root, "metrics");
  if (metrics != ((void*)0)) {
    int size = cJSON_GetArraySize(metrics);
    httpTrace("context:%p, fd:%d, ip:%s, multiple metrics:%d at one time", pContext, pContext->fd, pContext->ipstr,
              size);
    if (size <= 0) {
      httpSendErrorResp(pContext, HTTP_TG_METRICS_NULL);
      cJSON_Delete(root);
      return 0;
    }

    int cmdSize = size * 2 + 1;
    if (cmdSize > HTTP_MAX_CMD_SIZE) {
      httpSendErrorResp(pContext, HTTP_TG_METRICS_SIZE);
      cJSON_Delete(root);
      return 0;
    }

    if (!httpMallocMultiCmds(pContext, cmdSize, HTTP_BUFFER_SIZE)) {
      httpSendErrorResp(pContext, HTTP_NO_ENOUGH_MEMORY);
      cJSON_Delete(root);
      return 0;
    }

    HttpSqlCmd *cmd = httpNewSqlCmd(pContext);
    if (cmd == ((void*)0)) {
      httpSendErrorResp(pContext, HTTP_NO_ENOUGH_MEMORY);
      cJSON_Delete(root);
      return 0;
    }
    cmd->cmdType = HTTP_CMD_TYPE_CREATE_DB;
    cmd->cmdReturnType = HTTP_CMD_RETURN_TYPE_NO_RETURN;
    cmd->sql = httpAddToSqlCmdBuffer(pContext, "create database if not exists %s", db);

    for (int i = 0; i < size; i++) {
      cJSON *metric = cJSON_GetArrayItem(metrics, i);
      if (metric != ((void*)0)) {
        if (!tgProcessSingleMetric(pContext, metric, db)) {
          cJSON_Delete(root);
          return 0;
        }
      }
    }
  } else {
    httpTrace("context:%p, fd:%d, ip:%s, single metric", pContext, pContext->fd, pContext->ipstr);

    if (!httpMallocMultiCmds(pContext, 3, HTTP_BUFFER_SIZE)) {
      httpSendErrorResp(pContext, HTTP_NO_ENOUGH_MEMORY);
      cJSON_Delete(root);
      return 0;
    }

    HttpSqlCmd *cmd = httpNewSqlCmd(pContext);
    if (cmd == ((void*)0)) {
      httpSendErrorResp(pContext, HTTP_NO_ENOUGH_MEMORY);
      cJSON_Delete(root);
      return 0;
    }
    cmd->cmdType = HTTP_CMD_TYPE_CREATE_DB;
    cmd->cmdReturnType = HTTP_CMD_RETURN_TYPE_NO_RETURN;
    cmd->sql = httpAddToSqlCmdBuffer(pContext, "create database if not exists %s", db);

    if (!tgProcessSingleMetric(pContext, root, db)) {
      cJSON_Delete(root);
      return 0;
    }
  }

  cJSON_Delete(root);

  pContext->reqType = HTTP_REQTYPE_MULTI_SQL;
  pContext->encodeMethod = &tgQueryMethod;
  pContext->multiCmds->pos = 2;

  return 1;
}
