#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int const fd; } ;
struct TYPE_11__ {int halfclosed; scalar_t__ state; int /*<<< orphan*/  cmd_read; int /*<<< orphan*/  cmd; int /*<<< orphan*/  cmd_len; TYPE_1__ sock; } ;
typedef  TYPE_2__ Conn ;

/* Variables and functions */
 scalar_t__ STATE_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(const int fd, const short which, Conn *c)
{
    if (fd != c->sock.fd) {
        FUNC9("Argh! event fd doesn't match conn fd.");
        FUNC0(fd);
        FUNC3(c);
        FUNC5();
        return;
    }

    if (which == 'h') {
        c->halfclosed = 1;
    }

    FUNC2(c);
    while (FUNC1(c) && (c->cmd_len = FUNC8(c->cmd, c->cmd_read))) {
        FUNC4(c);
        FUNC7(c);
    }
    if (c->state == STATE_CLOSE) {
        FUNC6(c);
        FUNC3(c);
    }
    FUNC5();
}