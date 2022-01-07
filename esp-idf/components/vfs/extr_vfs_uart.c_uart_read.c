
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_2__ {scalar_t__ rx_mode; int read_lock; } ;


 scalar_t__ ESP_LINE_ENDINGS_CR ;
 scalar_t__ ESP_LINE_ENDINGS_CRLF ;
 int EWOULDBLOCK ;
 int NONE ;
 int _lock_acquire_recursive (int *) ;
 int _lock_release_recursive (int *) ;
 int assert (int) ;
 int errno ;
 TYPE_1__** s_ctx ;
 int uart_read_char (int) ;
 int uart_return_char (int,int) ;

__attribute__((used)) static ssize_t uart_read(int fd, void* data, size_t size)
{
    assert(fd >=0 && fd < 3);
    char *data_c = (char *) data;
    size_t received = 0;
    _lock_acquire_recursive(&s_ctx[fd]->read_lock);
    while (received < size) {
        int c = uart_read_char(fd);
        if (c == '\r') {
            if (s_ctx[fd]->rx_mode == ESP_LINE_ENDINGS_CR) {
                c = '\n';
            } else if (s_ctx[fd]->rx_mode == ESP_LINE_ENDINGS_CRLF) {

                int c2 = uart_read_char(fd);
                if (c2 == NONE) {

                    uart_return_char(fd, c);
                    break;
                }
                if (c2 == '\n') {

                    c = '\n';
                } else {



                    uart_return_char(fd, c2);
                }
            }
        } else if (c == NONE) {
            break;
        }
        data_c[received] = (char) c;
        ++received;
        if (c == '\n') {
            break;
        }
    }
    _lock_release_recursive(&s_ctx[fd]->read_lock);
    if (received > 0) {
        return received;
    }
    errno = EWOULDBLOCK;
    return -1;
}
