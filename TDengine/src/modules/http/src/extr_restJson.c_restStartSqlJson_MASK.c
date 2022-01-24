#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_1__ TAOS_FIELD ;
typedef  int /*<<< orphan*/  JsonBuf ;
typedef  int /*<<< orphan*/  HttpSqlCmd ;
typedef  int /*<<< orphan*/  HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  JsonArrEnd ; 
 int /*<<< orphan*/  JsonArrStt ; 
 int /*<<< orphan*/  JsonObjStt ; 
 int /*<<< orphan*/  REST_JSON_AFFECT_ROWS ; 
 int REST_JSON_AFFECT_ROWS_LEN ; 
 int /*<<< orphan*/  REST_JSON_DATA ; 
 int /*<<< orphan*/  REST_JSON_DATA_LEN ; 
 int /*<<< orphan*/  REST_JSON_HEAD ; 
 int /*<<< orphan*/  REST_JSON_HEAD_LEN ; 
 int /*<<< orphan*/  REST_JSON_STATUS ; 
 int /*<<< orphan*/  REST_JSON_STATUS_LEN ; 
 int /*<<< orphan*/  REST_JSON_SUCCESS ; 
 int /*<<< orphan*/  REST_JSON_SUCCESS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(HttpContext *pContext, HttpSqlCmd *cmd, TAOS_RES *result) {
  JsonBuf *jsonBuf = FUNC6(pContext);
  if (jsonBuf == NULL) return;

  TAOS_FIELD *fields = FUNC9(result);
  int         num_fields = FUNC10(result);

  FUNC0(jsonBuf, pContext);
  FUNC7(jsonBuf);

  // object begin
  FUNC5(jsonBuf, JsonObjStt);

  // status, and data
  FUNC1(jsonBuf);
  FUNC2(jsonBuf, REST_JSON_STATUS, REST_JSON_STATUS_LEN, REST_JSON_SUCCESS, REST_JSON_SUCCESS_LEN);

  // head begin
  FUNC1(jsonBuf);
  FUNC3(jsonBuf, REST_JSON_HEAD, REST_JSON_HEAD_LEN);
  // head array begin
  FUNC1(jsonBuf);
  FUNC5(jsonBuf, JsonArrStt);

  if (num_fields == 0) {
    FUNC1(jsonBuf);
    FUNC4(jsonBuf, REST_JSON_AFFECT_ROWS, REST_JSON_AFFECT_ROWS_LEN);
  } else {
    for (int i = 0; i < num_fields; ++i) {
      FUNC1(jsonBuf);
      FUNC4(jsonBuf, fields[i].name, (int)FUNC8(fields[i].name));
    }
  }

  // head array end
  FUNC5(jsonBuf, JsonArrEnd);

  // data begin
  FUNC1(jsonBuf);
  FUNC3(jsonBuf, REST_JSON_DATA, REST_JSON_DATA_LEN);
  // data array begin
  FUNC1(jsonBuf);
  FUNC5(jsonBuf, JsonArrStt);
}