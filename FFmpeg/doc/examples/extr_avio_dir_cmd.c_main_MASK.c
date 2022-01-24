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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(int argc, char *argv[])
{
    const char *op = NULL;
    int ret;

    FUNC2(AV_LOG_DEBUG);

    if (argc < 2) {
        FUNC9(argv[0]);
        return 1;
    }

    FUNC4();

    op = argv[1];
    if (FUNC8(op, "list") == 0) {
        if (argc < 3) {
            FUNC1(NULL, AV_LOG_INFO, "Missing argument for list operation.\n");
            ret = FUNC0(EINVAL);
        } else {
            ret = FUNC6(argv[2]);
        }
    } else if (FUNC8(op, "del") == 0) {
        if (argc < 3) {
            FUNC1(NULL, AV_LOG_INFO, "Missing argument for del operation.\n");
            ret = FUNC0(EINVAL);
        } else {
            ret = FUNC5(argv[2]);
        }
    } else if (FUNC8(op, "move") == 0) {
        if (argc < 4) {
            FUNC1(NULL, AV_LOG_INFO, "Missing argument for move operation.\n");
            ret = FUNC0(EINVAL);
        } else {
            ret = FUNC7(argv[2], argv[3]);
        }
    } else {
        FUNC1(NULL, AV_LOG_INFO, "Invalid operation %s\n", op);
        ret = FUNC0(EINVAL);
    }

    FUNC3();

    return ret < 0 ? 1 : 0;
}