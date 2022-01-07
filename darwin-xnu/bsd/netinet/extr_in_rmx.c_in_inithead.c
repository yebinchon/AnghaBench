
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {int rnh_close; int rnh_matchaddr_args; int rnh_matchaddr; int rnh_deladdr; int rnh_addaddr; } ;


 size_t AF_INET ;
 int VERIFY (int) ;
 int in_addroute ;
 int in_clsroute ;
 int in_deleteroute ;
 int in_matroute ;
 int in_matroute_args ;
 int rn_inithead (void**,int) ;
 int * rt_tables ;

int
in_inithead(void **head, int off)
{
 struct radix_node_head *rnh;


 VERIFY(head != (void **)&rt_tables[AF_INET] || *head == ((void*)0));

 if (!rn_inithead(head, off))
  return (0);







 if (head != (void **)&rt_tables[AF_INET])
  return (1);

 rnh = *head;
 rnh->rnh_addaddr = in_addroute;
 rnh->rnh_deladdr = in_deleteroute;
 rnh->rnh_matchaddr = in_matroute;
 rnh->rnh_matchaddr_args = in_matroute_args;
 rnh->rnh_close = in_clsroute;
 return (1);
}
