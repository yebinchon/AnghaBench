#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cJSON ;
struct TYPE_14__ {char* pos; } ;
struct TYPE_17__ {TYPE_1__ data; } ;
struct TYPE_18__ {TYPE_2__* multiCmds; int /*<<< orphan*/ * encodeMethod; int /*<<< orphan*/  reqType; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; TYPE_4__ parser; } ;
struct TYPE_16__ {void* sql; void* cmdReturnType; void* cmdType; } ;
struct TYPE_15__ {int pos; } ;
typedef  TYPE_3__ HttpSqlCmd ;
typedef  TYPE_4__ HttpParser ;
typedef  TYPE_5__ HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_BUFFER_SIZE ; 
 void* HTTP_CMD_RETURN_TYPE_NO_RETURN ; 
 void* HTTP_CMD_TYPE_CREATE_DB ; 
 int HTTP_MAX_CMD_SIZE ; 
 int /*<<< orphan*/  HTTP_NO_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  HTTP_NO_MSG_INPUT ; 
 int /*<<< orphan*/  HTTP_REQTYPE_MULTI_SQL ; 
 int /*<<< orphan*/  HTTP_TG_INVALID_JSON ; 
 int /*<<< orphan*/  HTTP_TG_METRICS_NULL ; 
 int /*<<< orphan*/  HTTP_TG_METRICS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 void* FUNC5 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  tgQueryMethod ; 

bool FUNC11(HttpContext *pContext, char *db) {
  FUNC9("context:%p, fd:%d, ip:%s, process telegraf query msg", pContext, pContext->fd, pContext->ipstr);

  HttpParser *pParser = &pContext->parser;
  char *      filter = pParser->data.pos;
  if (filter == NULL) {
    FUNC8(pContext, HTTP_NO_MSG_INPUT);
    return false;
  }

  cJSON *root = FUNC4(filter);
  if (root == NULL) {
    FUNC8(pContext, HTTP_TG_INVALID_JSON);
    return false;
  }

  cJSON *metrics = FUNC3(root, "metrics");
  if (metrics != NULL) {
    int size = FUNC2(metrics);
    FUNC9("context:%p, fd:%d, ip:%s, multiple metrics:%d at one time", pContext, pContext->fd, pContext->ipstr,
              size);
    if (size <= 0) {
      FUNC8(pContext, HTTP_TG_METRICS_NULL);
      FUNC0(root);
      return false;
    }

    int cmdSize = size * 2 + 1;
    if (cmdSize > HTTP_MAX_CMD_SIZE) {
      FUNC8(pContext, HTTP_TG_METRICS_SIZE);
      FUNC0(root);
      return false;
    }

    if (!FUNC6(pContext, cmdSize, HTTP_BUFFER_SIZE)) {
      FUNC8(pContext, HTTP_NO_ENOUGH_MEMORY);
      FUNC0(root);
      return false;
    }

    HttpSqlCmd *cmd = FUNC7(pContext);
    if (cmd == NULL) {
      FUNC8(pContext, HTTP_NO_ENOUGH_MEMORY);
      FUNC0(root);
      return false;
    }
    cmd->cmdType = HTTP_CMD_TYPE_CREATE_DB;
    cmd->cmdReturnType = HTTP_CMD_RETURN_TYPE_NO_RETURN;
    cmd->sql = FUNC5(pContext, "create database if not exists %s", db);

    for (int i = 0; i < size; i++) {
      cJSON *metric = FUNC1(metrics, i);
      if (metric != NULL) {
        if (!FUNC10(pContext, metric, db)) {
          FUNC0(root);
          return false;
        }
      }
    }
  } else {
    FUNC9("context:%p, fd:%d, ip:%s, single metric", pContext, pContext->fd, pContext->ipstr);

    if (!FUNC6(pContext, 3, HTTP_BUFFER_SIZE)) {
      FUNC8(pContext, HTTP_NO_ENOUGH_MEMORY);
      FUNC0(root);
      return false;
    }

    HttpSqlCmd *cmd = FUNC7(pContext);
    if (cmd == NULL) {
      FUNC8(pContext, HTTP_NO_ENOUGH_MEMORY);
      FUNC0(root);
      return false;
    }
    cmd->cmdType = HTTP_CMD_TYPE_CREATE_DB;
    cmd->cmdReturnType = HTTP_CMD_RETURN_TYPE_NO_RETURN;
    cmd->sql = FUNC5(pContext, "create database if not exists %s", db);

    if (!FUNC10(pContext, root, db)) {
      FUNC0(root);
      return false;
    }
  }

  FUNC0(root);

  pContext->reqType = HTTP_REQTYPE_MULTI_SQL;
  pContext->encodeMethod = &tgQueryMethod;
  pContext->multiCmds->pos = 2;

  return true;
}