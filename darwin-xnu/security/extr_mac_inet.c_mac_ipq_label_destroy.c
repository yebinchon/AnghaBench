
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipq {int * ipq_label; } ;


 int mac_ipq_label_free (int *) ;

void
mac_ipq_label_destroy(struct ipq *ipq)
{

 mac_ipq_label_free(ipq->ipq_label);
 ipq->ipq_label = ((void*)0);
}
