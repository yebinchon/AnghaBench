#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_11__ {int /*<<< orphan*/  fd; scalar_t__ f; TYPE_3__* x; } ;
struct TYPE_8__ {int /*<<< orphan*/  setpos; int /*<<< orphan*/  less; } ;
struct TYPE_10__ {TYPE_5__ sock; TYPE_1__ conns; } ;
struct TYPE_9__ {int /*<<< orphan*/  x; int /*<<< orphan*/  (* f ) (int /*<<< orphan*/ ,int) ;} ;
typedef  TYPE_2__ Socket ;
typedef  TYPE_3__ Server ;
typedef  scalar_t__ Handle ;

/* Variables and functions */
 int /*<<< orphan*/  conn_less ; 
 int /*<<< orphan*/  conn_setpos ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 () ; 
 int FUNC4 (TYPE_2__**,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_5__*,char) ; 
 scalar_t__ srvaccept ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(Server *s)
{
    int r;
    Socket *sock;

    if (FUNC3() == -1) {
        FUNC8("sockinit");
        FUNC0(1);
    }

    s->sock.x = s;
    s->sock.f = (Handle)srvaccept;
    s->conns.less = conn_less;
    s->conns.setpos = conn_setpos;

    r = FUNC1(s->sock.fd, 1024);
    if (r == -1) {
        FUNC7("listen");
        return;
    }

    r = FUNC5(&s->sock, 'r');
    if (r == -1) {
        FUNC7("sockwant");
        FUNC0(2);
    }


    for (;;) {
        int64 period = FUNC2(s);

        int rw = FUNC4(&sock, period);
        if (rw == -1) {
            FUNC8("socknext");
            FUNC0(1);
        }

        if (rw) {
            sock->f(sock->x, rw);
        }
    }
}