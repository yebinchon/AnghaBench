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
typedef  int /*<<< orphan*/  gssize ;
typedef  scalar_t__ gchar ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (scalar_t__*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__ const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 scalar_t__* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__ const*) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__*,int /*<<< orphan*/ ) ; 

GhbValue*
FUNC9(const gchar *filename)
{
    gchar *buffer;
    size_t size;
    GhbValue *gval;
    FILE *fd;

    fd = FUNC4(filename, "r");
    if (fd == NULL)
    {
        FUNC7("Plist parse: failed to open %s", filename);
        return NULL;
    }
    FUNC2(fd, 0, SEEK_END);
    size = FUNC3(fd);
    FUNC2(fd, 0, SEEK_SET);
    buffer = FUNC6(size+1);
    size = FUNC1(buffer, 1, size, fd);
    buffer[size] = 0;
    gval = FUNC8(buffer, (gssize)size);
    FUNC5(buffer);
    FUNC0(fd);
    return gval;
}