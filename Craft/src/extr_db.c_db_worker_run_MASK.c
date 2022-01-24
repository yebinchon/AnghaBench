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
struct TYPE_3__ {int type; int /*<<< orphan*/  key; int /*<<< orphan*/  q; int /*<<< orphan*/  p; int /*<<< orphan*/  w; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ RingEntry ;

/* Variables and functions */
#define  BLOCK 132 
#define  COMMIT 131 
#define  EXIT 130 
#define  KEY 129 
#define  LIGHT 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cnd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ring ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC8(void *arg) {
    int running = 1;
    while (running) {
        RingEntry e;
        FUNC5(&mtx);
        while (!FUNC7(&ring, &e)) {
            FUNC4(&cnd, &mtx);
        }
        FUNC6(&mtx);
        switch (e.type) {
            case BLOCK:
                FUNC1(e.p, e.q, e.x, e.y, e.z, e.w);
                break;
            case LIGHT:
                FUNC2(e.p, e.q, e.x, e.y, e.z, e.w);
                break;
            case KEY:
                FUNC3(e.p, e.q, e.key);
                break;
            case COMMIT:
                FUNC0();
                break;
            case EXIT:
                running = 0;
                break;
        }
    }
    return 0;
}