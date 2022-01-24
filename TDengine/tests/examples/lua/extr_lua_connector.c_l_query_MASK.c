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
typedef  int /*<<< orphan*/  lua_State ;
typedef  char int64_t ;
struct TYPE_3__ {char* name; int type; } ;
typedef  int /*<<< orphan*/ ** TAOS_ROW ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_1__ TAOS_FIELD ;
typedef  int /*<<< orphan*/  TAOS ;

/* Variables and functions */
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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(lua_State *L){
  TAOS *    taos= FUNC8(L,1);
  char *s = FUNC9(L, 2);
  TAOS_RES *result;
  FUNC1(L);
  int table_index = FUNC0(L);

  //  printf("receive command:%s\r\n",s);
  if(FUNC17(taos, s)!=0){
    FUNC10("failed, reason:%s\n", FUNC12(taos));
    FUNC4(L, -1);
    FUNC6(L, table_index, "code");    
    FUNC5(L, FUNC12(taos));
    FUNC6(L, table_index, "error");    
   
    return 1;
    
  }else{
    //printf("success to query.\n");
    result = FUNC18(taos);

    if (result == NULL) {
      FUNC10("failed to get result, reason:%s\n", FUNC12(taos));
      FUNC4(L, -2);
      FUNC6(L, table_index, "code");    
      FUNC5(L, FUNC12(taos));
      FUNC6(L, table_index, "error");    
      return 1;
    }

    TAOS_ROW    row;
    int         rows = 0;
    int         num_fields = FUNC15(taos);
    TAOS_FIELD *fields = FUNC13(result);
    char        temp[256];

    int affectRows = FUNC11(taos);
    //    printf(" affect rows:%d\r\n", affectRows);
    FUNC4(L, 0);
    FUNC6(L, table_index, "code");
    FUNC2(L, affectRows);
    FUNC6(L, table_index, "affected");
    FUNC1(L);
    
    while ((row = FUNC14(result))) {
      //printf("row index:%d\n",rows);
      rows++;

      FUNC4(L,rows);
      FUNC1(L);

      for (int i = 0; i < num_fields; ++i) {
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

	FUNC7(L,-3);
      }

      FUNC7(L,-3);
    }
    FUNC16(result);    
  }

  FUNC6(L, table_index, "item");
  return 1;
}