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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int NEEDS_CHECKING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(AVIOContext *pb, int size, char **str)
{
    char *res;
    int ret;

    /* EBML strings are usually not 0-terminated, so we allocate one
     * byte more, read the string and NULL-terminate it ourselves. */
    if (!(res = FUNC2(size + 1)))
        return FUNC0(ENOMEM);
    if ((ret = FUNC3(pb, (uint8_t *) res, size)) != size) {
        FUNC1(res);
        return ret < 0 ? ret : NEEDS_CHECKING;
    }
    (res)[size] = '\0';
    FUNC1(*str);
    *str = res;

    return 0;
}