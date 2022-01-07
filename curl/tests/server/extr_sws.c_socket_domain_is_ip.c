
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int socket_domain ;

__attribute__((used)) static bool socket_domain_is_ip(void)
{
  switch(socket_domain) {
  case 129:



    return 1;
  default:

    return 0;
  }
}
