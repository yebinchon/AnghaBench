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
typedef  int /*<<< orphan*/  hb_value_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,size_t) ; 
 char* FUNC7 (size_t) ; 

hb_value_t*
FUNC8(const char *filename)
{
    char *buffer;
    size_t size;
    hb_value_t *gval;
    FILE *fd;

    fd = FUNC1(filename, "r");
    if (fd == NULL)
    {
        // File doesn't exist
        return NULL;
    }
    FUNC4(fd, 0, SEEK_END);
    size = FUNC5(fd);
    FUNC4(fd, 0, SEEK_SET);
    buffer = FUNC7(size+1);
    size = FUNC2(buffer, 1, size, fd);
    buffer[size] = 0;
    gval = FUNC6(buffer, size);
    FUNC3(buffer);
    FUNC0(fd);
    return gval;
}