
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_ktable {int pfrkt_anchor; int pfrkt_name; } ;


 int PF_TABLE_NAME_SIZE ;
 int strcmp (int ,int ) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static int
pfr_ktable_compare(struct pfr_ktable *p, struct pfr_ktable *q)
{
 int d;

 if ((d = strncmp(p->pfrkt_name, q->pfrkt_name, PF_TABLE_NAME_SIZE)))
  return (d);
 return (strcmp(p->pfrkt_anchor, q->pfrkt_anchor));
}
