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

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

void
FUNC5()
{
    // This test is similar to the close_releases_job test, except that
    // connection is not closed, but command quit is sent.
    int port = FUNC0();
    int cons = FUNC3(port);
    int prod = FUNC3(port);
    FUNC4(cons, "reserve-with-timeout 1\r\n");

    FUNC4(prod, "put 0 0 100 1\r\n");
    FUNC4(prod, "a\r\n");
    FUNC1(prod, "INSERTED 1\r\n");

    FUNC1(cons, "RESERVED 1 1\r\n");
    FUNC1(cons, "a\r\n");

    FUNC4(prod, "stats-job 1\r\n");
    FUNC2(prod, "OK ");
    FUNC2(prod, "\nstate: reserved\n");

    // Quitting consumer should make the job ready sooner than ttr=100.
    FUNC4(cons, "quit\r\n");

    // Job should be released in less than 1s. It is not instantly;
    // we do not make guarantees about how soon jobs should be released.
    FUNC4(prod, "reserve-with-timeout 1\r\n");
    FUNC1(prod, "RESERVED 1 1\r\n");
    FUNC1(prod, "a\r\n");
}