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
struct TYPE_4__ {char* sval; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 double FUNC3 (char*,char**) ; 
 int /*<<< orphan*/  type_double ; 
 int /*<<< orphan*/  type_float ; 
 int /*<<< orphan*/  type_ldouble ; 

__attribute__((used)) static Node *FUNC4(Token *tok) {
    char *s = tok->sval;
    char *end;
    double v = FUNC3(s, &end);
    // C11 6.4.4.2p4: The default type for flonum is double.
    if (!FUNC2(end, "l"))
        return FUNC0(type_ldouble, v);
    if (!FUNC2(end, "f"))
        return FUNC0(type_float, v);
    if (*end != '\0')
        FUNC1(tok, "invalid character '%c': %s", *end, s);
    return FUNC0(type_double, v);
}