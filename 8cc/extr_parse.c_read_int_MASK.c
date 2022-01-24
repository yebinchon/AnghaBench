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
typedef  int /*<<< orphan*/  Type ;
struct TYPE_4__ {char* sval; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 scalar_t__ LONG_MAX ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 long FUNC4 (char*,char**,int) ; 
 int /*<<< orphan*/ * type_int ; 
 int /*<<< orphan*/ * type_long ; 
 int /*<<< orphan*/ * type_uint ; 
 int /*<<< orphan*/ * type_ulong ; 

__attribute__((used)) static Node *FUNC5(Token *tok) {
    char *s = tok->sval;
    char *end;
    long v = !FUNC3(s, "0b", 2)
        ? FUNC4(s + 2, &end, 2) : FUNC4(s, &end, 0);
    Type *ty = FUNC2(end);
    if (ty)
        return FUNC0(ty, v);
    if (*end != '\0')
        FUNC1(tok, "invalid character '%c': %s", *end, s);

    // C11 6.4.4.1p5: Decimal constant type is int, long, or long long.
    // In 8cc, long and long long are the same size.
    bool base10 = (*s != '0');
    if (base10) {
        ty = !(v & ~(long)INT_MAX) ? type_int : type_long;
        return FUNC0(ty, v);
    }
    // Octal or hexadecimal constant type may be unsigned.
    ty = !(v & ~(unsigned long)INT_MAX) ? type_int
        : !(v & ~(unsigned long)UINT_MAX) ? type_uint
        : !(v & ~(unsigned long)LONG_MAX) ? type_long
        : type_ulong;
    return FUNC0(ty, v);
}