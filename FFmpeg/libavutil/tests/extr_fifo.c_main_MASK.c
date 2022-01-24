#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  j ;
struct TYPE_13__ {int rndx; int wndx; } ;
typedef  TYPE_1__ AVFifoBuffer ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int*) ; 
 int* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC17(void)
{
    /* create a FIFO buffer */
    AVFifoBuffer *fifo = FUNC0(13 * sizeof(int));
    int i, j, n, *p;

    /* fill data */
    for (i = 0; FUNC10(fifo) >= sizeof(int); i++)
        FUNC5(fifo, &i, sizeof(int), NULL);

    /* peek at FIFO */
    n = FUNC9(fifo) / sizeof(int);
    for (i = -n + 1; i < n; i++) {
        int *v = (int *)FUNC7(fifo, i * sizeof(int));
        FUNC15("%d: %d\n", i, *v);
    }
    FUNC15("\n");

    /* peek_at at FIFO */
    n = FUNC9(fifo) / sizeof(int);
    for (i = 0; i < n; i++) {
        FUNC3(fifo, &j, i * sizeof(int), sizeof(j), NULL);
        FUNC15("%d: %d\n", i, j);
    }
    FUNC15("\n");

    /* generic peek at FIFO */

    n = FUNC9(fifo);
    p = FUNC14(n);
    if (p == NULL) {
        FUNC12(stderr, "failed to allocate memory.\n");
        FUNC11(1);
    }

    (void) FUNC2(fifo, p, n, NULL);

    /* read data at p */
    n /= sizeof(int);
    for(i = 0; i < n; ++i)
        FUNC15("%d: %d\n", i, p[i]);

    FUNC16('\n');

    /* read data */
    for (i = 0; FUNC9(fifo) >= sizeof(int); i++) {
        FUNC4(fifo, &j, sizeof(int), NULL);
        FUNC15("%d ", j);
    }
    FUNC15("\n");

    /* test *ndx overflow */
    FUNC8(fifo);
    fifo->rndx = fifo->wndx = ~(uint32_t)0 - 5;

    /* fill data */
    for (i = 0; FUNC10(fifo) >= sizeof(int); i++)
        FUNC5(fifo, &i, sizeof(int), NULL);

    /* peek_at at FIFO */
    n = FUNC9(fifo) / sizeof(int);
    for (i = 0; i < n; i++) {
        FUNC3(fifo, &j, i * sizeof(int), sizeof(j), NULL);
        FUNC15("%d: %d\n", i, j);
    }
    FUNC16('\n');

    /* test fifo_grow */
    (void) FUNC6(fifo, 15 * sizeof(int));

    /* fill data */
    n = FUNC9(fifo) / sizeof(int);
    for (i = n; FUNC10(fifo) >= sizeof(int); ++i)
        FUNC5(fifo, &i, sizeof(int), NULL);

    /* peek_at at FIFO */
    n = FUNC9(fifo) / sizeof(int);
    for (i = 0; i < n; i++) {
        FUNC3(fifo, &j, i * sizeof(int), sizeof(j), NULL);
        FUNC15("%d: %d\n", i, j);
    }

    FUNC1(fifo);
    FUNC13(p);

    return 0;
}