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
typedef  int /*<<< orphan*/  UINT32 ;
typedef  scalar_t__ UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static char *FUNC3(char *buffer)
{
    /* value and its position */
    UINT16 index = 0;
    UINT32 value = 0;

    int offset;
    int res;

    while ((res = FUNC2(buffer, "%u%n", &value, &offset)) > 0) {
        /* decides if its valid index and value, if yes stores it */
        FUNC1(index, value);

        buffer += offset;

        /* check if more values are present */
        if (*buffer != ',') {
            break;
        }

        index++;
        buffer++;
    }

    if (res > 0) {
        FUNC0(buffer);
        return buffer;
    }

    return NULL;
}