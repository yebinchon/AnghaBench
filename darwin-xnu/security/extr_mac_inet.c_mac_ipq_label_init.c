
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipq {int * ipq_label; } ;


 int ENOMEM ;
 int * mac_ipq_label_alloc (int) ;

int
mac_ipq_label_init(struct ipq *ipq, int flag)
{

 ipq->ipq_label = mac_ipq_label_alloc(flag);
 if (ipq->ipq_label == ((void*)0))
  return (ENOMEM);
 return (0);
}
