#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  TAOS ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*,char*,char*,int) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(lua_State *L){
  TAOS *    taos;
  char *host = FUNC7(L, 1);
  char *user = FUNC7(L, 2);
  char *password = FUNC7(L, 3);
  char *database = FUNC7(L, 4);
  int port =FUNC0(L, 5);
  FUNC11();
  
  FUNC2(L);
  int table_index = FUNC1(L);

  taos = FUNC9(host, user,password,database, port);
  if (taos == NULL) {
    FUNC8("failed to connect server, reason:%s\n", FUNC10(taos));
    
    FUNC4(L, -1);
    FUNC6(L, table_index, "code");
    FUNC5(L, FUNC10(taos));
    FUNC6(L, table_index, "error");    
    FUNC3(L,NULL);
    FUNC6(L, table_index, "conn");
  }else{
    FUNC8("success to connect server\n");
    FUNC4(L, 0);
    FUNC6(L, table_index, "code");
    FUNC5(L, FUNC10(taos));
    FUNC6(L, table_index, "error");    
    FUNC3(L,taos);
    FUNC6(L, table_index, "conn");
  }

  return 1;
}