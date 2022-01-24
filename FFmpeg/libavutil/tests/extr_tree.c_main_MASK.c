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
typedef  int /*<<< orphan*/  AVTreeNode ;
typedef  int /*<<< orphan*/  AVLFG ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_LOG_INFO ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmp ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC12(int argc, char **argv)
{
    int i;
    void *k;
    AVTreeNode *root = NULL, *node = NULL;
    AVLFG prng;
    int log_level = argc <= 1 ? AV_LOG_INFO : FUNC0(argv[1]);

    FUNC5(log_level);

    FUNC3(&prng, 1);

    for (i = 0; i < 10000; i++) {
        intptr_t j = FUNC2(&prng) % 86294;

        if (FUNC10(root) > 999) {
            FUNC4(NULL, AV_LOG_ERROR, "FATAL error %d\n", i);
            FUNC11(root, 0);
            return 1;
        }
        FUNC4(NULL, AV_LOG_DEBUG, "inserting %4d\n", (int)j);

        if (!node)
            node = FUNC9();
        if (!node) {
            FUNC4(NULL, AV_LOG_ERROR, "Memory allocation failure.\n");
            return 1;
        }
        FUNC8(&root, (void *)(j + 1), cmp, &node);

        j = FUNC2(&prng) % 86294;
        {
            AVTreeNode *node2 = NULL;
            FUNC4(NULL, AV_LOG_DEBUG, "removing %4d\n", (int)j);
            FUNC8(&root, (void *)(j + 1), cmp, &node2);
            k = FUNC7(root, (void *)(j + 1), cmp, NULL);
            if (k)
                FUNC4(NULL, AV_LOG_ERROR, "removal failure %d\n", i);
            FUNC1(node2);
        }
    }
    FUNC1(node);

    FUNC6(root);

    return 0;
}