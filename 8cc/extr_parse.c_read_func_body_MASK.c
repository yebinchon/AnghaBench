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
typedef  int /*<<< orphan*/  Vector ;
typedef  int /*<<< orphan*/  Type ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  ENC_NONE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/ * current_func_type ; 
 int /*<<< orphan*/ * localenv ; 
 int /*<<< orphan*/ * localvars ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static Node *FUNC7(Type *functype, char *fname, Vector *params) {
    localenv = FUNC2(localenv);
    localvars = FUNC3();
    current_func_type = functype;
    Node *funcname = FUNC1(ENC_NONE, fname, FUNC6(fname) + 1);
    FUNC4(localenv, "__func__", funcname);
    FUNC4(localenv, "__FUNCTION__", funcname);
    Node *body = FUNC5();
    Node *r = FUNC0(functype, fname, params, body, localvars);
    current_func_type = NULL;
    localenv = NULL;
    localvars = NULL;
    return r;
}