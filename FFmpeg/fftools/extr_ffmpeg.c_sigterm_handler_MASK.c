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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int received_nb_signals ; 
 int received_sigterm ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int sig)
{
    int ret;
    received_sigterm = sig;
    received_nb_signals++;
    FUNC2();
    if(received_nb_signals > 3) {
        ret = FUNC3(2/*STDERR_FILENO*/, "Received > 3 system signals, hard exiting\n",
                    FUNC1("Received > 3 system signals, hard exiting\n"));
        if (ret < 0) { /* Do nothing */ };
        FUNC0(123);
    }
}