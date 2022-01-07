
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nat_traversal_task_oustanding; int tcp_port; int nat_traversal_state; } ;
typedef TYPE_1__ netplay_t ;


 int memset (int *,int ,int) ;
 int task_push_netplay_nat_traversal (int *,int ) ;

void netplay_init_nat_traversal(netplay_t *netplay)
{
   memset(&netplay->nat_traversal_state, 0, sizeof(netplay->nat_traversal_state));
   netplay->nat_traversal_task_oustanding = 1;
   task_push_netplay_nat_traversal(&netplay->nat_traversal_state, netplay->tcp_port);
}
