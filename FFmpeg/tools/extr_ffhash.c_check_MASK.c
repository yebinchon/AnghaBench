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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDONLY ; 
 int SIZE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  hash ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(char *file)
{
    uint8_t buffer[SIZE];
    int fd, flags = O_RDONLY;
    int ret = 0;

#ifdef O_BINARY
    flags |= O_BINARY;
#endif
    if (file) fd = FUNC5(file, flags);
    else      fd = 0;
    if (fd == -1) {
        FUNC6("%s=OPEN-FAILED: %s:", FUNC0(hash), FUNC8(errno));
        ret = 1;
        goto end;
    }

    FUNC1(hash);
    for (;;) {
        int size = FUNC7(fd, buffer, SIZE);
        if (size < 0) {
            int err = errno;
            FUNC3(fd);
            FUNC4();
            FUNC6("+READ-FAILED: %s", FUNC8(err));
            ret = 2;
            goto end;
        } else if(!size)
            break;
        FUNC2(hash, buffer, size);
    }
    FUNC3(fd);

    FUNC4();
end:
    if (file)
        FUNC6(" *%s", file);
    FUNC6("\n");

    return ret;
}