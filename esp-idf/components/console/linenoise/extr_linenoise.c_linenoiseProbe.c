
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int STDIN_FILENO ;
 int fcntl (int ,int ,...) ;
 int fprintf (int ,char*) ;
 int fread (char*,int,int,int ) ;
 int stdin ;
 int stdout ;
 int usleep (int) ;

int linenoiseProbe(void) {

    int flags = fcntl(STDIN_FILENO, F_GETFL);
    flags |= O_NONBLOCK;
    int res = fcntl(STDIN_FILENO, F_SETFL, flags);
    if (res != 0) {
        return -1;
    }

    fprintf(stdout, "\x1b[5n");


    int timeout_ms = 200;
    size_t read_bytes = 0;
    while (timeout_ms > 0 && read_bytes < 4) {
        usleep(10000);
        char c;
        int cb = fread(&c, 1, 1, stdin);
        read_bytes += cb;
        timeout_ms--;
    }

    flags &= ~O_NONBLOCK;
    res = fcntl(STDIN_FILENO, F_SETFL, flags);
    if (res != 0) {
        return -1;
    }
    if (read_bytes < 4) {
        return -2;
    }
    return 0;
}
