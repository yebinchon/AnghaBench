
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int member_0; } ;


 int RTF_HOST ;
 int RTM_DELETE ;
 int route_cmd (int ,struct in_addr,struct in_addr,struct in_addr,int ,unsigned int) ;

__attribute__((used)) static int
host_route_delete(struct in_addr host, unsigned int ifscope)
{
    struct in_addr zeroes = { 0 };

    return (route_cmd(RTM_DELETE, host, zeroes, zeroes, RTF_HOST, ifscope));
}
