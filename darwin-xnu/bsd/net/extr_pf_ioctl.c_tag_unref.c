
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct pf_tags {int dummy; } ;
struct pf_tagname {scalar_t__ tag; scalar_t__ ref; } ;


 int M_TEMP ;
 struct pf_tagname* TAILQ_FIRST (struct pf_tags*) ;
 struct pf_tagname* TAILQ_NEXT (struct pf_tagname*,int ) ;
 int TAILQ_REMOVE (struct pf_tags*,struct pf_tagname*,int ) ;
 int _FREE (struct pf_tagname*,int ) ;
 int entries ;

__attribute__((used)) static void
tag_unref(struct pf_tags *head, u_int16_t tag)
{
 struct pf_tagname *p, *next;

 if (tag == 0)
  return;

 for (p = TAILQ_FIRST(head); p != ((void*)0); p = next) {
  next = TAILQ_NEXT(p, entries);
  if (tag == p->tag) {
   if (--p->ref == 0) {
    TAILQ_REMOVE(head, p, entries);
    _FREE(p, M_TEMP);
   }
   break;
  }
 }
}
