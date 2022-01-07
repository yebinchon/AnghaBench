
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

__attribute__((used)) static int uart_close(int fd)
{
    assert(fd >=0 && fd < 3);
    return 0;
}
