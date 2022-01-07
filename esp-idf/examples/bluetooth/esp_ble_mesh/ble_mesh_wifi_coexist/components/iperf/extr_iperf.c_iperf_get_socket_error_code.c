
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;

int iperf_get_socket_error_code(int sockfd)
{
    return errno;
}
