
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int write_lock; } ;


 int _lock_acquire_recursive (int *) ;
 int _lock_release_recursive (int *) ;
 int assert (int) ;
 TYPE_1__** s_ctx ;
 int uart_tx_wait_idle (int ) ;

__attribute__((used)) static int uart_fsync(int fd)
{
    assert(fd >= 0 && fd < 3);
    _lock_acquire_recursive(&s_ctx[fd]->write_lock);
    uart_tx_wait_idle((uint8_t) fd);
    _lock_release_recursive(&s_ctx[fd]->write_lock);
    return 0;
}
