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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (int,int const) ; 
 int const FUNC2 (int const) ; 
 int const FUNC3 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int const,char const*,int const,int) ; 
 int const FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(const char *filename, off_t offset, const char *msg)
{
    const int fd = FUNC4(filename, O_WRONLY);
    FUNC1(-1, fd);

    const off_t current_pos = FUNC3(fd, 0, SEEK_END); // O_APPEND is not the same - jumps to the end only before write()

    const int r = FUNC5(fd, msg, FUNC6(msg), offset);
    FUNC0(FUNC6(msg), r);

    FUNC0(current_pos, FUNC3(fd, 0, SEEK_CUR)); // pwrite should not move the pointer

    FUNC0(0, FUNC2(fd));
}