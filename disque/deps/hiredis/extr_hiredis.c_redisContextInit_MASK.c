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
struct TYPE_4__ {char* errstr; int /*<<< orphan*/  reader; int /*<<< orphan*/  obuf; scalar_t__ err; } ;
typedef  TYPE_1__ redisContext ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static redisContext *FUNC3(void) {
    redisContext *c;

    c = FUNC0(1,sizeof(redisContext));
    if (c == NULL)
        return NULL;

    c->err = 0;
    c->errstr[0] = '\0';
    c->obuf = FUNC2();
    c->reader = FUNC1();
    return c;
}