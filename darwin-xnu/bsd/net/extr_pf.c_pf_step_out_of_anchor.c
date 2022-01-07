
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pf_ruleset {TYPE_2__* rules; } ;
struct pf_rule {int dummy; } ;
struct pf_anchor_stackframe {TYPE_4__* r; struct pf_ruleset* rs; TYPE_5__* child; int * parent; } ;
struct TYPE_11__ {struct pf_ruleset ruleset; scalar_t__ match; } ;
struct TYPE_10__ {int quick; TYPE_3__* anchor; } ;
struct TYPE_9__ {int match; } ;
struct TYPE_7__ {int ptr; } ;
struct TYPE_8__ {TYPE_1__ active; } ;


 TYPE_5__* RB_NEXT (int ,int *,TYPE_5__*) ;
 struct pf_rule* TAILQ_FIRST (int ) ;
 struct pf_rule* TAILQ_NEXT (TYPE_4__*,int ) ;
 int entries ;
 int pf_anchor_node ;
 struct pf_anchor_stackframe* pf_anchor_stack ;

int
pf_step_out_of_anchor(int *depth, struct pf_ruleset **rs, int n,
    struct pf_rule **r, struct pf_rule **a, int *match)
{
 struct pf_anchor_stackframe *f;
 int quick = 0;

 do {
  if (*depth <= 0)
   break;
  f = pf_anchor_stack + *depth - 1;
  if (f->parent != ((void*)0) && f->child != ((void*)0)) {
   if (f->child->match ||
       (match != ((void*)0) && *match)) {
    f->r->anchor->match = 1;
    if (match)
     *match = 0;
   }
   f->child = RB_NEXT(pf_anchor_node, f->parent, f->child);
   if (f->child != ((void*)0)) {
    *rs = &f->child->ruleset;
    *r = TAILQ_FIRST((*rs)->rules[n].active.ptr);
    if (*r == ((void*)0))
     continue;
    else
     break;
   }
  }
  (*depth)--;
  if (*depth == 0 && a != ((void*)0))
   *a = ((void*)0);
  *rs = f->rs;
  if (f->r->anchor->match || (match != ((void*)0) && *match))
   quick = f->r->quick;
  *r = TAILQ_NEXT(f->r, entries);
 } while (*r == ((void*)0));

 return (quick);
}
