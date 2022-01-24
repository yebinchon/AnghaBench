#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HashIndex ;
typedef  int /*<<< orphan*/  CacheSyncCtx ;

/* Variables and functions */
 int BUFSZ ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8() {
    char buf[BUFSZ];
    int len, ret;
    CacheSyncCtx *ctx;
    HashIndex *idx;

    /* capacity, key size, value size */
    idx = FUNC6(0, 32, 12);
    ctx = FUNC3(idx);

    while (1) {
        len = FUNC7(0, buf, BUFSZ);
        if (!len) {
            break;
        }
        ret = FUNC1(ctx, buf, len);
        if(!ret && FUNC0(ctx)) {
            FUNC4(stderr, "error: %s\n", FUNC0(ctx));
            return 1;
        }
    }
    FUNC5(idx);
    FUNC2(ctx);
    return 0;
}