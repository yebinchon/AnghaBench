#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* sval; TYPE_1__* file; } ;
typedef  TYPE_2__ Token ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int enable_warning ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  once ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(Token *tok) {
    char *s = tok->sval;
    if (!FUNC3(s, "once")) {
        char *path = FUNC1(tok->file->name);
        FUNC2(once, path, (void *)1);
    } else if (!FUNC3(s, "enable_warning")) {
        enable_warning = true;
    } else if (!FUNC3(s, "disable_warning")) {
        enable_warning = false;
    } else {
        FUNC0(tok, "unknown #pragma: %s", s);
    }
}