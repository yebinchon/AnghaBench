
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ucontext_t ;
struct sigaction {int sa_flags; int sa_handler; int sa_mask; } ;
typedef int siginfo_t ;
typedef int sds ;
struct TYPE_2__ {int pidfile; scalar_t__ daemonize; int assert_line; int assert_file; int assert_failed; } ;


 int DISQUE_VERSION ;
 int LL_WARNING ;
 int SA_NODEFER ;
 int SA_ONSTACK ;
 int SA_RESETHAND ;
 int SIG_DFL ;
 int UNUSED (int *) ;
 int bioKillThreads () ;
 int bugReportStart () ;
 int dictGetHashFunctionSeed () ;
 int genDisqueInfoString (char*) ;
 int getAllClientsInfoString () ;
 int getpid () ;
 int kill (int ,int) ;
 int logCurrentClient () ;
 int logRegisters (int *) ;
 int logStackTrace (int *) ;
 scalar_t__ memtest_test_linux_anonymous_maps () ;
 int sdscatprintf (int ,char*,int ) ;
 int sdsfree (int ) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 int serverLogRaw (int ,int ) ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int unlink (int ) ;

void sigsegvHandler(int sig, siginfo_t *info, void *secret) {
    ucontext_t *uc = (ucontext_t*) secret;
    sds infostring, clients;
    struct sigaction act;
    UNUSED(info);

    bugReportStart();
    serverLog(LL_WARNING,
        "    Disque %s crashed by signal: %d", DISQUE_VERSION, sig);
    serverLog(LL_WARNING,
        "    Failed assertion: %s (%s:%d)", server.assert_failed,
                        server.assert_file, server.assert_line);


    serverLog(LL_WARNING, "--- STACK TRACE");
    logStackTrace(uc);


    serverLog(LL_WARNING, "--- INFO OUTPUT");
    infostring = genDisqueInfoString("all");
    infostring = sdscatprintf(infostring, "hash_init_value: %u\n",
        dictGetHashFunctionSeed());
    serverLogRaw(LL_WARNING, infostring);
    serverLog(LL_WARNING, "--- CLIENT LIST OUTPUT");
    clients = getAllClientsInfoString();
    serverLogRaw(LL_WARNING, clients);
    sdsfree(infostring);
    sdsfree(clients);


    logCurrentClient();


    logRegisters(uc);
    serverLog(LL_WARNING,
"\n=== DISQUE BUG REPORT END. Make sure to include from START to END. ===\n\n"
"       Please report the crash by opening an issue on github:\n\n"
"           http://github.com/antirez/disque/issues\n\n"
"  Suspect RAM error? Use disque-server --test-memory to verify it.\n\n"
);

    if (server.daemonize) unlink(server.pidfile);



    sigemptyset (&act.sa_mask);
    act.sa_flags = SA_NODEFER | SA_ONSTACK | SA_RESETHAND;
    act.sa_handler = SIG_DFL;
    sigaction (sig, &act, ((void*)0));
    kill(getpid(),sig);
}
