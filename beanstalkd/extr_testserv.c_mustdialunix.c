
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 int connect (int,struct sockaddr*,int) ;
 int exit (int) ;
 int snprintf (int ,size_t const,char*,char*) ;
 int socket (int ,int ,int ) ;
 int twarn (char*) ;

__attribute__((used)) static int
mustdialunix(char *socket_file)
{
    struct sockaddr_un addr;
    const size_t maxlen = sizeof(addr.sun_path);
    addr.sun_family = AF_UNIX;
    snprintf(addr.sun_path, maxlen, "%s", socket_file);

    int fd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (fd == -1) {
        twarn("socket");
        exit(1);
    }

    int r = connect(fd, (struct sockaddr *)&addr, sizeof addr);
    if (r == -1) {
        twarn("connect");
        exit(1);
    }

    return fd;
}
