
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int non_blocking; } ;


 int ENOENT ;
 int O_NONBLOCK ;
 int errno ;
 TYPE_1__** s_ctx ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int uart_open(const char * path, int flags, int mode)
{


    int fd = -1;

    if (strcmp(path, "/0") == 0) {
        fd = 0;
    } else if (strcmp(path, "/1") == 0) {
        fd = 1;
    } else if (strcmp(path, "/2") == 0) {
        fd = 2;
    } else {
        errno = ENOENT;
        return fd;
    }

    s_ctx[fd]->non_blocking = ((flags & O_NONBLOCK) == O_NONBLOCK);

    return fd;
}
