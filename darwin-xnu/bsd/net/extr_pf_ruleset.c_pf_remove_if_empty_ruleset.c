
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pf_ruleset {scalar_t__ tables; TYPE_4__* anchor; TYPE_3__* rules; scalar_t__ topen; } ;
struct pf_anchor {struct pf_ruleset ruleset; int children; } ;
struct dummynet_event {int dn_event_code; } ;
typedef int dn_event ;
struct TYPE_9__ {scalar_t__ refcnt; struct pf_anchor* parent; int name; int children; } ;
struct TYPE_7__ {scalar_t__ open; int ptr; } ;
struct TYPE_6__ {int ptr; } ;
struct TYPE_8__ {TYPE_2__ inactive; TYPE_1__ active; } ;


 int DUMMYNET_NLC_DISABLED ;
 int FALSE ;
 int PF_RULESET_MAX ;
 int RB_EMPTY (int *) ;
 int RB_REMOVE (int ,int *,TYPE_4__*) ;
 int TAILQ_EMPTY (int ) ;
 int bzero (struct dummynet_event*,int) ;
 int dummynet_event_enqueue_nwk_wq_entry (struct dummynet_event*) ;
 int is_nlc_enabled_glb ;
 int pf_anchor_global ;
 int pf_anchor_node ;
 int pf_anchors ;
 struct pf_ruleset pf_main_ruleset ;
 int rs_free (TYPE_4__*) ;
 scalar_t__ strncmp (char*,int ,int) ;

void
pf_remove_if_empty_ruleset(struct pf_ruleset *ruleset)
{
 struct pf_anchor *parent;
 int i;

 while (ruleset != ((void*)0)) {
  if (ruleset == &pf_main_ruleset || ruleset->anchor == ((void*)0) ||
      !RB_EMPTY(&ruleset->anchor->children) ||
      ruleset->anchor->refcnt > 0 || ruleset->tables > 0 ||
      ruleset->topen)
   return;
  for (i = 0; i < PF_RULESET_MAX; ++i)
   if (!TAILQ_EMPTY(ruleset->rules[i].active.ptr) ||
       !TAILQ_EMPTY(ruleset->rules[i].inactive.ptr) ||
       ruleset->rules[i].inactive.open)
    return;
  RB_REMOVE(pf_anchor_global, &pf_anchors, ruleset->anchor);
  if ((parent = ruleset->anchor->parent) != ((void*)0))
   RB_REMOVE(pf_anchor_node, &parent->children,
       ruleset->anchor);
  rs_free(ruleset->anchor);
  if (parent == ((void*)0))
   return;
  ruleset = &parent->ruleset;
 }
}
