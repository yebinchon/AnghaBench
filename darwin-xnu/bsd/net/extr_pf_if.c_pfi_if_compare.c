
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {int pfik_name; } ;


 int IFNAMSIZ ;
 int strncmp (int ,int ,int ) ;

int
pfi_if_compare(struct pfi_kif *p, struct pfi_kif *q)
{
 return (strncmp(p->pfik_name, q->pfik_name, IFNAMSIZ));
}
