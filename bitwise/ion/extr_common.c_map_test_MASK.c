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
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Map ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,void*) ; 

void FUNC3(void) {
    Map map = {0};
    enum { N = 1024 };
    for (size_t i = 1; i < N; i++) {
        FUNC2(&map, (void *)i, (void *)(i+1));
    }
    for (size_t i = 1; i < N; i++) {
        void *val = FUNC1(&map, (void *)i);
        FUNC0(val == (void *)(i+1));
    }
}