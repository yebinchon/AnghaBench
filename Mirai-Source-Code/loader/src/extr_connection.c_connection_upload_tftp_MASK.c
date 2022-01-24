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
struct connection {int rdbuf_pos; int /*<<< orphan*/  rdbuf; } ;

/* Variables and functions */
 char* TOKEN_RESPONSE ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 

int FUNC2(struct connection *conn)
{
    int offset = FUNC1(conn->rdbuf, conn->rdbuf_pos, TOKEN_RESPONSE, FUNC0(TOKEN_RESPONSE));

    if (offset == -1)
        return 0;

    if (FUNC1(conn->rdbuf, offset, "Permission denied", 17) != -1)
        return offset * -1;

    if (FUNC1(conn->rdbuf, offset, "timeout", 7) != -1)
        return offset * -1;

    if (FUNC1(conn->rdbuf, offset, "illegal option", 14) != -1)
        return offset * -1;

    return offset;
}