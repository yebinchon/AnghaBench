#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_14__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Type ;
struct TYPE_15__ {scalar_t__ kind; int /*<<< orphan*/  sval; } ;
typedef  TYPE_2__ Token ;
struct TYPE_16__ {scalar_t__ kind; } ;

/* Variables and functions */
 scalar_t__ KIND_ARRAY ; 
 scalar_t__ KIND_STRUCT ; 
 scalar_t__ TSTRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 TYPE_2__* FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_2__*,char) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int) ; 
 TYPE_7__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC10(Vector *inits, Type *ty, int off, bool designated) {
    Token *tok = FUNC2();
    if (FUNC4(ty)) {
        if (tok->kind == TSTRING) {
            FUNC0(inits, ty, tok->sval, off);
            return;
        }
        if (FUNC3(tok, '{') && FUNC6()->kind == TSTRING) {
            tok = FUNC2();
            FUNC0(inits, ty, tok->sval, off);
            FUNC1('}');
            return;
        }
    }
    FUNC9(tok);
    if (ty->kind == KIND_ARRAY) {
        FUNC7(inits, ty, off, designated);
    } else if (ty->kind == KIND_STRUCT) {
        FUNC8(inits, ty, off, designated);
    } else {
        Type *arraytype = FUNC5(ty, 1);
        FUNC7(inits, arraytype, off, designated);
    }
}