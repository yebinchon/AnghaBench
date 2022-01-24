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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(lua_State *L){
  TAOS *    taos= FUNC5(L,1);
  FUNC1(L);
  int table_index = FUNC0(L);
  
  if(taos == NULL){
    FUNC2(L, -1);
    FUNC4(L, table_index, "code");    
    FUNC3(L, "null pointer.");
    FUNC4(L, table_index, "error"); 
  }else{
    FUNC6(taos);   
    FUNC2(L, 0);
    FUNC4(L, table_index, "code");    
    FUNC3(L, "done.");
    FUNC4(L, table_index, "error");    
  }
  return 1;
}