
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_INET6 ;
 int sock_open_common (int ,int) ;

__attribute__((used)) static int
sockv6_open(int type)
{
 return (sock_open_common(PF_INET6, type));
}
