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
typedef  int /*<<< orphan*/  ucontext_t ;
struct sigaction {int sa_flags; int /*<<< orphan*/  sa_handler; int /*<<< orphan*/  sa_mask; } ;
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_2__ {int /*<<< orphan*/  pidfile; scalar_t__ daemonize; int /*<<< orphan*/  assert_line; int /*<<< orphan*/  assert_file; int /*<<< orphan*/  assert_failed; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISQUE_VERSION ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int SA_NODEFER ; 
 int SA_ONSTACK ; 
 int SA_RESETHAND ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

void FUNC19(int sig, siginfo_t *info, void *secret) {
    ucontext_t *uc = (ucontext_t*) secret;
    sds infostring, clients;
    struct sigaction act;
    FUNC0(info);

    FUNC2();
    FUNC14(LL_WARNING,
        "    Disque %s crashed by signal: %d", DISQUE_VERSION, sig);
    FUNC14(LL_WARNING,
        "    Failed assertion: %s (%s:%d)", server.assert_failed,
                        server.assert_file, server.assert_line);

    /* Log the stack trace */
    FUNC14(LL_WARNING, "--- STACK TRACE");
    FUNC10(uc);

    /* Log INFO and CLIENT LIST */
    FUNC14(LL_WARNING, "--- INFO OUTPUT");
    infostring = FUNC4("all");
    infostring = FUNC12(infostring, "hash_init_value: %u\n",
        FUNC3());
    FUNC15(LL_WARNING, infostring);
    FUNC14(LL_WARNING, "--- CLIENT LIST OUTPUT");
    clients = FUNC5();
    FUNC15(LL_WARNING, clients);
    FUNC13(infostring);
    FUNC13(clients);

    /* Log the current client */
    FUNC8();

    /* Log dump of processor registers */
    FUNC9(uc);

#if defined(HAVE_PROC_MAPS)
    /* Test memory */
    serverLog(LL_WARNING, "--- FAST MEMORY TEST");
    bioKillThreads();
    if (memtest_test_linux_anonymous_maps()) {
        serverLog(LL_WARNING,
            "!!! MEMORY ERROR DETECTED! Check your memory ASAP !!!");
    } else {
        serverLog(LL_WARNING,
            "Fast memory test PASSED, however your memory can still be broken. Please run a memory test for several hours if possible.");
    }
#endif

    FUNC14(LL_WARNING,
"\n=== DISQUE BUG REPORT END. Make sure to include from START to END. ===\n\n"
"       Please report the crash by opening an issue on github:\n\n"
"           http://github.com/antirez/disque/issues\n\n"
"  Suspect RAM error? Use disque-server --test-memory to verify it.\n\n"
);
    /* free(messages); Don't call free() with possibly corrupted memory. */
    if (server.daemonize) FUNC18(server.pidfile);

    /* Make sure we exit with the right signal at the end. So for instance
     * the core will be dumped if enabled. */
    FUNC17 (&act.sa_mask);
    act.sa_flags = SA_NODEFER | SA_ONSTACK | SA_RESETHAND;
    act.sa_handler = SIG_DFL;
    FUNC16 (sig, &act, NULL);
    FUNC7(FUNC6(),sig);
}