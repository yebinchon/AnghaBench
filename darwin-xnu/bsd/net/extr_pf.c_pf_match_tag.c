
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_rule {int match_tag; scalar_t__ match_tag_not; } ;
struct pf_mtag {int pftag_tag; } ;



__attribute__((used)) static int
pf_match_tag(struct pf_rule *r, struct pf_mtag *pf_mtag,
    int *tag)
{
 if (*tag == -1)
  *tag = pf_mtag->pftag_tag;

 return ((!r->match_tag_not && r->match_tag == *tag) ||
     (r->match_tag_not && r->match_tag != *tag));
}
