
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_state {scalar_t__ id; scalar_t__ creatorid; } ;



__attribute__((used)) static __inline int
pf_state_compare_id(struct pf_state *a, struct pf_state *b)
{
 if (a->id > b->id)
  return (1);
 if (a->id < b->id)
  return (-1);
 if (a->creatorid > b->creatorid)
  return (1);
 if (a->creatorid < b->creatorid)
  return (-1);

 return (0);
}
