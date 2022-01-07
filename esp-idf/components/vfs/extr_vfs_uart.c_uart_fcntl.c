
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int non_blocking; } ;


 int ENOSYS ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int assert (int) ;
 int errno ;
 TYPE_1__** s_ctx ;

__attribute__((used)) static int uart_fcntl(int fd, int cmd, int arg)
{
    assert(fd >=0 && fd < 3);
    int result = 0;
    if (cmd == F_GETFL) {
        if (s_ctx[fd]->non_blocking) {
            result |= O_NONBLOCK;
        }
    } else if (cmd == F_SETFL) {
        s_ctx[fd]->non_blocking = (arg & O_NONBLOCK) != 0;
    } else {

        result = -1;
        errno = ENOSYS;
    }
    return result;
}
