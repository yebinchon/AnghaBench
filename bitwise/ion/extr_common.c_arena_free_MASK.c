#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char** blocks; } ;
typedef  TYPE_1__ Arena ;

/* Variables and functions */
 char** FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(Arena *arena) {
    for (char **it = arena->blocks; it != FUNC0(arena->blocks); it++) {
        FUNC2(*it);
    }
    FUNC1(arena->blocks);
}