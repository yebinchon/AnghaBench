#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Decl ;

/* Variables and functions */
 int /*<<< orphan*/  DECL_STRUCT ; 
 int /*<<< orphan*/  DECL_UNION ; 
 int /*<<< orphan*/  TOKEN_POUND ; 
 int /*<<< orphan*/  const_keyword ; 
 int /*<<< orphan*/  enum_keyword ; 
 int /*<<< orphan*/  func_keyword ; 
 int /*<<< orphan*/  import_keyword ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  struct_keyword ; 
 TYPE_1__ token ; 
 int /*<<< orphan*/  typedef_keyword ; 
 int /*<<< orphan*/  union_keyword ; 
 int /*<<< orphan*/  var_keyword ; 

Decl *FUNC10(void) {
    SrcPos pos = token.pos;
    if (FUNC0(enum_keyword)) {
        return FUNC4(pos);
    } else if (FUNC0(struct_keyword)) {
        return FUNC2(pos, DECL_STRUCT);
    } else if (FUNC0(union_keyword)) {
        return FUNC2(pos, DECL_UNION);
    } else if (FUNC0(const_keyword)) {
        return FUNC3(pos);
    } else if (FUNC0(typedef_keyword)) {
        return FUNC8(pos);
    } else if (FUNC0(func_keyword)) {
        return FUNC5(pos);
    } else if (FUNC0(var_keyword)) {
        return FUNC9(pos);
    } else if (FUNC0(import_keyword)) {
        return FUNC6(pos);
    } else if (FUNC1(TOKEN_POUND)) {
        return FUNC7(pos);
    } else {
        return NULL;
    }
}