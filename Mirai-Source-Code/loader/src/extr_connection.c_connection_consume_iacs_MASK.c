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
typedef  int uint8_t ;
struct connection {int* rdbuf; int rdbuf_pos; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  FUNC0 (struct connection*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct connection *conn)
{
    int consumed = 0;
    uint8_t *ptr = conn->rdbuf;

    while (consumed < conn->rdbuf_pos)
    {
        int i;

        if (*ptr != 0xff)
            break;
        else if (*ptr == 0xff)
        {
            if (!FUNC0(conn, ptr, 1))
                break;
            if (ptr[1] == 0xff)
            {
                ptr += 2;
                consumed += 2;
                continue;
            }
            else if (ptr[1] == 0xfd)
            {
                uint8_t tmp1[3] = {255, 251, 31};
                uint8_t tmp2[9] = {255, 250, 31, 0, 80, 0, 24, 255, 240};

                if (!FUNC0(conn, ptr, 2))
                    break;
                if (ptr[2] != 31)
                    goto iac_wont;

                ptr += 3;
                consumed += 3;

                FUNC1(conn->fd, tmp1, 3, MSG_NOSIGNAL);
                FUNC1(conn->fd, tmp2, 9, MSG_NOSIGNAL);
            }
            else
            {
                iac_wont:

                if (!FUNC0(conn, ptr, 2))
                    break;

                for (i = 0; i < 3; i++)
                {
                    if (ptr[i] == 0xfd)
                        ptr[i] = 0xfc;
                    else if (ptr[i] == 0xfb)
                        ptr[i] = 0xfd;
                }

                FUNC1(conn->fd, ptr, 3, MSG_NOSIGNAL);
                ptr += 3;
                consumed += 3;
            }
        }
    }

    return consumed;
}