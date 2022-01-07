
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_2__ {scalar_t__ tx_mode; int write_lock; int (* tx_func ) (int,int) ;} ;


 scalar_t__ ESP_LINE_ENDINGS_CR ;
 scalar_t__ ESP_LINE_ENDINGS_LF ;
 int _lock_acquire_recursive (int *) ;
 int _lock_release_recursive (int *) ;
 int assert (int) ;
 TYPE_1__** s_ctx ;
 int stub1 (int,char) ;
 int stub2 (int,int) ;

__attribute__((used)) static ssize_t uart_write(int fd, const void * data, size_t size)
{
    assert(fd >=0 && fd < 3);
    const char *data_c = (const char *)data;




    _lock_acquire_recursive(&s_ctx[fd]->write_lock);
    for (size_t i = 0; i < size; i++) {
        int c = data_c[i];
        if (c == '\n' && s_ctx[fd]->tx_mode != ESP_LINE_ENDINGS_LF) {
            s_ctx[fd]->tx_func(fd, '\r');
            if (s_ctx[fd]->tx_mode == ESP_LINE_ENDINGS_CR) {
                continue;
            }
        }
        s_ctx[fd]->tx_func(fd, c);
    }
    _lock_release_recursive(&s_ctx[fd]->write_lock);
    return size;
}
