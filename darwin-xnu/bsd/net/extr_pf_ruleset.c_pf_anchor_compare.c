
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_anchor {int path; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static __inline int
pf_anchor_compare(struct pf_anchor *a, struct pf_anchor *b)
{
 int c = strcmp(a->path, b->path);

 return (c ? (c < 0 ? -1 : 1) : 0);
}
