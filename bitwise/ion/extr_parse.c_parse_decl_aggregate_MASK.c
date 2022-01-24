#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int is_incomplete; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  scalar_t__ DeclKind ;
typedef  TYPE_1__ Decl ;
typedef  int /*<<< orphan*/  AggregateKind ;

/* Variables and functions */
 int /*<<< orphan*/  AGGREGATE_STRUCT ; 
 int /*<<< orphan*/  AGGREGATE_UNION ; 
 scalar_t__ DECL_STRUCT ; 
 scalar_t__ DECL_UNION ; 
 int /*<<< orphan*/  TOKEN_SEMICOLON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 () ; 

Decl *FUNC6(SrcPos pos, DeclKind kind) {
    FUNC0(kind == DECL_STRUCT || kind == DECL_UNION);
    const char *name = FUNC5();
    AggregateKind aggregate_kind = kind == DECL_STRUCT ? AGGREGATE_STRUCT : AGGREGATE_UNION;
    if (FUNC1(TOKEN_SEMICOLON)) {
        Decl *decl = FUNC3(pos, kind, name, FUNC2(pos, aggregate_kind, NULL, 0));
        decl->is_incomplete = true;
        return decl;
    } else {
        return FUNC3(pos, kind, name, FUNC4(aggregate_kind));
    }
}