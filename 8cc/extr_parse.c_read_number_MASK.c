#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* sval; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static Node *FUNC4(Token *tok) {
    char *s = tok->sval;
    bool isfloat = FUNC3(s, ".pP") || (FUNC2(s, "0x", 2) && FUNC3(s, "eE"));
    return isfloat ? FUNC0(tok) : FUNC1(tok);
}