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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 char* FUNC0 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (int) ; 

char *FUNC10(const char *path) {
    FILE *file = FUNC3(path, "rb");
    if (!file) {
        FUNC4(stderr, "fopen %s failed: %d %s\n", path, errno, FUNC9(errno));
        FUNC1(1);
    }
    FUNC6(file, 0, SEEK_END);
    int length = FUNC7(file);
    FUNC8(file);
    char *data = FUNC0(length + 1, sizeof(char));
    FUNC5(data, 1, length, file);
    FUNC2(file);
    return data;
}