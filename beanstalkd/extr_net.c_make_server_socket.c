
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SD_LISTEN_FDS_START ;
 int SOCK_STREAM ;
 int errno ;
 int make_inet_socket (char*,char*) ;
 int make_unix_socket (char*) ;
 int sd_is_socket_inet (int,int ,int ,int,int ) ;
 int sd_is_socket_unix (int,int ,int,int *,int ) ;
 int sd_listen_fds (int) ;
 int strncmp (char*,char*,int) ;
 int twarn (char*) ;
 int twarnx (char*) ;

int
make_server_socket(char *host, char *port)
{
    int fd = -1, r;




    r = sd_listen_fds(1);
    if (r < 0) {
        twarn("sd_listen_fds");
        return -1;
    }
    if (r > 0) {
        if (r > 1) {
            twarnx("inherited more than one listen socket;"
                   " ignoring all but the first");
        }
        fd = SD_LISTEN_FDS_START;
        r = sd_is_socket_inet(fd, 0, SOCK_STREAM, 1, 0);
        if (r < 0) {
            twarn("sd_is_socket_inet");
            errno = -r;
            return -1;
        }
        if (r == 0) {
            r = sd_is_socket_unix(fd, SOCK_STREAM, 1, ((void*)0), 0);
            if (r < 0) {
                twarn("sd_is_socket_unix");
                errno = -r;
                return -1;
            }
            if (r == 0) {
                twarnx("inherited fd is not a TCP or UNIX listening socket");
                return -1;
            }
        }
        return fd;
    }

    if (host && !strncmp(host, "unix:", 5)) {
        return make_unix_socket(&host[5]);
    } else {
        return make_inet_socket(host, port);
    }
}
