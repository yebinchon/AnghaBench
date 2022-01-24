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
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,char*,int*,...) ; 

__attribute__((used)) static char *FUNC4(char *buffer)
{
    UINT16 idx, dir, status, mode, mpty;
    char numstr[33];     /* spec forces 32 chars, plus one for \0*/
    UINT16 type;
    int res;
    int offset;
    FUNC0(buffer, "+CLCC:");

    res = FUNC3(buffer, "%hu,%hu,%hu,%hu,%hu%n",
                 &idx, &dir, &status, &mode, &mpty, &offset);
    if (res < 5) {
        return NULL;
    }

    buffer += offset;

    /* check optional part */
    if (*buffer == ',') {
        int res2;

        res2 = FUNC3(buffer, ",\"%32[^\"]\",%hu%n", numstr, &type, &offset);
        if (res2 < 0) {
            return NULL;
        }

        if (res2 == 0) {
            res2 = FUNC3(buffer, ",\"\",%hu%n", &type, &offset);
            if (res < 0) {
                return NULL;
            }

            /* numstr is not matched in second attempt, correct this */
            res2++;
            numstr[0] = '\0';
        }

        if (res2 < 2) {
            return NULL;
        }

        res += res2;
        buffer += offset;
    }

    FUNC1(buffer);

    if (res > 6) {
        /* we also have last two optional parameters */
        FUNC2(idx, dir, status, mode, mpty, numstr, type);
    } else {
        /* we didn't get the last two parameters */
        FUNC2(idx, dir, status, mode, mpty, NULL, 0);
    }

    return buffer;
}