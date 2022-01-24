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
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

void
FUNC6()
{
    int port = FUNC0();
    int cons = FUNC4(port);
    int prod = FUNC4(port);
    FUNC5(cons, "reserve-with-timeout 1\r\n");

    FUNC5(prod, "put 0 0 100 1\r\n");
    FUNC5(prod, "a\r\n");
    FUNC1(prod, "INSERTED 1\r\n");

    FUNC1(cons, "RESERVED 1 1\r\n");
    FUNC1(cons, "a\r\n");

    FUNC5(prod, "stats-job 1\r\n");
    FUNC2(prod, "OK ");
    FUNC2(prod, "\nstate: reserved\n");

    // Closed consumer connection should make the job ready sooner than ttr=100.
    FUNC3(cons);

    // Job should be released in less than 1s. It is not instantly;
    // we do not make guarantees about how soon jobs should be released.
    FUNC5(prod, "reserve-with-timeout 1\r\n");
    FUNC1(prod, "RESERVED 1 1\r\n");
    FUNC1(prod, "a\r\n");
}