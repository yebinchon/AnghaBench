#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {char* valuestring; } ;
typedef  TYPE_3__ cJSON ;
struct TYPE_23__ {char* pos; } ;
struct TYPE_27__ {TYPE_1__ data; } ;
struct TYPE_28__ {TYPE_2__* multiCmds; int /*<<< orphan*/ * encodeMethod; int /*<<< orphan*/  reqType; int /*<<< orphan*/  user; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; TYPE_5__ parser; } ;
struct TYPE_26__ {int sql; int values; int table; int timestamp; scalar_t__ numOfRows; } ;
struct TYPE_24__ {scalar_t__ pos; } ;
typedef  TYPE_4__ HttpSqlCmd ;
typedef  TYPE_5__ HttpParser ;
typedef  TYPE_6__ HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_BUFFER_SIZE ; 
 int /*<<< orphan*/  HTTP_GC_QUERY_NULL ; 
 int /*<<< orphan*/  HTTP_GC_QUERY_SIZE ; 
 scalar_t__ HTTP_GC_TARGET_SIZE ; 
 int /*<<< orphan*/  HTTP_NO_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  HTTP_NO_MSG_INPUT ; 
 int /*<<< orphan*/  HTTP_PARSE_GC_REQ_ERROR ; 
 int /*<<< orphan*/  HTTP_REQTYPE_MULTI_SQL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (TYPE_3__*,char*) ; 
 TYPE_3__* FUNC4 (char*) ; 
 int /*<<< orphan*/  gcQueryMethod ; 
 int FUNC5 (TYPE_6__*,char*) ; 
 int FUNC6 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*) ; 

bool FUNC13(HttpContext* pContext) {
  FUNC10("context:%p, fd:%d, ip:%s, process grafana query msg", pContext, pContext->fd, pContext->ipstr);

  HttpParser* pParser = &pContext->parser;
  char*       filter = pParser->data.pos;
  if (filter == NULL) {
    FUNC9(pContext, HTTP_NO_MSG_INPUT);
    return false;
  }

  cJSON* root = FUNC4(filter);
  if (root == NULL) {
    FUNC9(pContext, HTTP_PARSE_GC_REQ_ERROR);
    return false;
  }

  int size = FUNC2(root);
  if (size <= 0) {
    FUNC9(pContext, HTTP_GC_QUERY_NULL);
    FUNC0(root);
    return false;
  }

  if (size > 100) {
    FUNC9(pContext, HTTP_GC_QUERY_SIZE);
    FUNC0(root);
    return false;
  }

  if (!FUNC7(pContext, size, HTTP_BUFFER_SIZE)) {
    FUNC9(pContext, HTTP_NO_ENOUGH_MEMORY);
    FUNC0(root);
    return false;
  }

  for (int i = 0; i < size; ++i) {
    cJSON* query = FUNC1(root, i);
    if (query == NULL) continue;

    cJSON* refId = FUNC3(query, "refId");
    if (refId == NULL || refId->valuestring == NULL || FUNC12(refId->valuestring) == 0) {
      FUNC10("context:%p, fd:%d, ip:%s, user:%s, refId is null", pContext, pContext->fd, pContext->ipstr,
                pContext->user);
      continue;
    }

    int refIdBuffer = FUNC5(pContext, refId->valuestring);
    if (refIdBuffer == -1) {
      FUNC11("context:%p, fd:%d, ip:%s, user:%s, refId buffer is full", pContext, pContext->fd, pContext->ipstr,
               pContext->user);
      break;
    }

    cJSON* alias = FUNC3(query, "alias");
    int    aliasBuffer = -1;
    if (!(alias == NULL || alias->valuestring == NULL || FUNC12(alias->valuestring) == 0)) {
      aliasBuffer = FUNC5(pContext, alias->valuestring);
      if (aliasBuffer == -1) {
        FUNC11("context:%p, fd:%d, ip:%s, user:%s, alias buffer is full", pContext, pContext->fd, pContext->ipstr,
                 pContext->user);
        break;
      }
    }
    if (aliasBuffer == -1) {
      aliasBuffer = FUNC5(pContext, "");
    }

    cJSON* sql = FUNC3(query, "sql");
    if (sql == NULL || sql->valuestring == NULL || FUNC12(sql->valuestring) == 0) {
      FUNC10("context:%p, fd:%d, ip:%s, user:%s, sql is null", pContext, pContext->fd, pContext->ipstr,
                pContext->user);
      continue;
    }

    int sqlBuffer = FUNC5(pContext, sql->valuestring);
    if (sqlBuffer == -1) {
      FUNC11("context:%p, fd:%d, ip:%s, user:%s, sql buffer is full", pContext, pContext->fd, pContext->ipstr,
               pContext->user);
      break;
    }

    HttpSqlCmd* cmd = FUNC8(pContext);
    if (cmd == NULL) {
      FUNC9(pContext, HTTP_NO_ENOUGH_MEMORY);
      FUNC0(root);
      return false;
    }

    cmd->sql = sqlBuffer;
    cmd->values = refIdBuffer;
    cmd->table = aliasBuffer;
    cmd->numOfRows = 0;                                                                 // hack way as target flags
    cmd->timestamp = FUNC6(pContext, HTTP_GC_TARGET_SIZE + 1);  // hack way

    if (cmd->timestamp == -1) {
      FUNC11("context:%p, fd:%d, ip:%s, user:%s, cant't malloc target size, sql buffer is full",
               pContext, pContext->fd, pContext->ipstr, pContext->user);
      break;
    }
  }

  pContext->reqType = HTTP_REQTYPE_MULTI_SQL;
  pContext->encodeMethod = &gcQueryMethod;
  pContext->multiCmds->pos = 0;

  return true;
}