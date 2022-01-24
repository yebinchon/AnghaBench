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
struct cb_param {int /*<<< orphan*/  callback; int /*<<< orphan*/ * state; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  char int64_t ;
struct TYPE_3__ {char* name; int type; } ;
typedef  int /*<<< orphan*/ ** TAOS_ROW ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_1__ TAOS_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
#define  TSDB_DATA_TYPE_BIGINT 137 
#define  TSDB_DATA_TYPE_BINARY 136 
#define  TSDB_DATA_TYPE_BOOL 135 
#define  TSDB_DATA_TYPE_DOUBLE 134 
#define  TSDB_DATA_TYPE_FLOAT 133 
#define  TSDB_DATA_TYPE_INT 132 
#define  TSDB_DATA_TYPE_NCHAR 131 
#define  TSDB_DATA_TYPE_SMALLINT 130 
#define  TSDB_DATA_TYPE_TIMESTAMP 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(void *param, TAOS_RES *result, TAOS_ROW row){

  struct cb_param* p = (struct cb_param*) param;
  TAOS_FIELD *fields = FUNC9(result);
  int         numFields = FUNC10(result);

  FUNC8("\n\r-----------------------------------------------------------------------------------\n");

  // printf("r:%d, L:%d\n",p->callback, p->state);

  lua_State *L = p->state;
  FUNC6(L, LUA_REGISTRYINDEX, p->callback);

  FUNC1(L);

  for (int i = 0; i < numFields; ++i) {
    if (row[i] == NULL) {
      continue;
    }

    FUNC5(L,fields[i].name);

    switch (fields[i].type) {
    case TSDB_DATA_TYPE_TINYINT:
      FUNC2(L,*((char *)row[i]));
      break;
    case TSDB_DATA_TYPE_SMALLINT:
      FUNC2(L,*((short *)row[i]));
      break;
    case TSDB_DATA_TYPE_INT:
      FUNC2(L,*((int *)row[i]));
      break;
    case TSDB_DATA_TYPE_BIGINT:
      FUNC2(L,*((int64_t *)row[i]));
      break;
    case TSDB_DATA_TYPE_FLOAT:
      FUNC4(L,*((float *)row[i]));
      break;
    case TSDB_DATA_TYPE_DOUBLE:
      FUNC4(L,*((double *)row[i]));
      break;
    case TSDB_DATA_TYPE_BINARY:
    case TSDB_DATA_TYPE_NCHAR:
      FUNC5(L,(char *)row[i]);
      break;
    case TSDB_DATA_TYPE_TIMESTAMP:
      FUNC2(L,*((int64_t *)row[i]));
      break;
    case TSDB_DATA_TYPE_BOOL:
      FUNC2(L,*((char *)row[i]));
      break;
    default:
      FUNC3(L);
      break;
    }

    FUNC7(L, -3);
  }

  FUNC0(L, 1, 0);

  FUNC8("-----------------------------------------------------------------------------------\n\r");
}