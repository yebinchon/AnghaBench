
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 scalar_t__ S_ISSOCK (int ) ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int listen (int,int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int printf (char*,int,char*) ;
 int set_nonblocking (int) ;
 int socket (int ,int ,int ) ;
 int stat (char*,struct stat*) ;
 size_t const strlen (char*) ;
 int strncpy (int ,char*,size_t const) ;
 int twarn (char*) ;
 int twarnx (char*) ;
 int unlink (char*) ;
 scalar_t__ verbose ;
 int warnx (char*,...) ;

__attribute__((used)) static int
make_unix_socket(char *path)
{
    int fd = -1, r;
    struct stat st;
    struct sockaddr_un addr;
    const size_t maxlen = sizeof(addr.sun_path) - 1;

    memset(&addr, 0, sizeof(struct sockaddr_un));
    addr.sun_family = AF_UNIX;
    if (strlen(path) > maxlen) {
        warnx("socket path %s is too long (%ld characters), where maximum allowed is %ld",
              path, strlen(path), maxlen);
        return -1;
    }
    strncpy(addr.sun_path, path, maxlen);

    r = stat(path, &st);
    if (r == 0) {
        if (S_ISSOCK(st.st_mode)) {
            warnx("removing existing local socket to replace it");
            r = unlink(path);
            if (r == -1) {
                twarn("unlink");
                return -1;
            }
        } else {
            twarnx("another file already exists in the given path");
            return -1;
        }
    }

    fd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (fd == -1) {
        twarn("socket()");
        return -1;
    }

    r = set_nonblocking(fd);
    if (r == -1) {
        close(fd);
        return -1;
    }

    r = bind(fd, (struct sockaddr *) &addr, sizeof(struct sockaddr_un));
    if (r == -1) {
        twarn("bind()");
        close(fd);
        return -1;
    }
    if (verbose) {
        printf("bind %d %s\n", fd, path);
    }

    r = listen(fd, 1024);
    if (r == -1) {
        twarn("listen()");
        close(fd);
        return -1;
    }

    return fd;
}
