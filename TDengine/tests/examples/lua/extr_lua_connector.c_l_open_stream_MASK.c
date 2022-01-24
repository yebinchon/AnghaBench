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
struct cb_param {int callback; void* stream; int /*<<< orphan*/ * state; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  TAOS ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (struct cb_param*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct cb_param*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int) ; 
 struct cb_param* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  stream_cb ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,struct cb_param*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(lua_State *L){
  int r = FUNC2(L, LUA_REGISTRYINDEX);
  TAOS *    taos = FUNC9(L,1);
  char * sqlstr = FUNC10(L,2);
  int stime = FUNC1(L,3);

  FUNC4(L);
  int table_index = FUNC3(L);

  struct cb_param *p = FUNC11(sizeof(struct cb_param));
  p->state = L;
  p->callback=r;
  //  printf("r:%d, L:%d\n",r,L);
  void * s = FUNC14(taos,sqlstr,stream_cb,stime,p,NULL);
  if (s == NULL) {
    FUNC12("failed to open stream, reason:%s\n", FUNC13(taos));
    FUNC0(p);
    FUNC6(L, -1);
    FUNC8(L, table_index, "code");
    FUNC7(L, FUNC13(taos));
    FUNC8(L, table_index, "error");
    FUNC5(L,NULL);
    FUNC8(L, table_index, "stream");
  }else{
    //    printf("success to open stream\n");
    FUNC6(L, 0);
    FUNC8(L, table_index, "code");
    FUNC7(L, FUNC13(taos));
    FUNC8(L, table_index, "error");
    p->stream = s;
    FUNC5(L,p);
    FUNC8(L, table_index, "stream");//stream has different content in lua and c.
  }

  return 1;
}