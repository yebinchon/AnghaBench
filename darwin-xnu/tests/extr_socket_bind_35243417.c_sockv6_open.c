
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET6 ;
 int SOCK_DGRAM ;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_QUIET ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int
sockv6_open(void)
{
 int s;

 s = socket(AF_INET6, SOCK_DGRAM, 0);
 T_QUIET;
 T_ASSERT_POSIX_SUCCESS(s, "socket(AF_INET6, SOCK_DGRAM, 0)");
 return (s);
}
