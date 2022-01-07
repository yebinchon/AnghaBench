
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct proc {int p_pid; int p_ucred; } ;
struct TYPE_4__ {int * tqe_next; int * tqe_prev; } ;
struct TYPE_3__ {int * cur; int list; } ;
struct pf_rule {char* label; char* ifname; char* qname; char* pqname; char* tagname; char* match_tagname; char* overload_tblname; int rule_flag; TYPE_2__ entries; scalar_t__ src_nodes; scalar_t__ states; TYPE_1__ rpool; int * overload_tbl; int * kif; int * anchor; int cpid; int cuid; } ;


 scalar_t__ PFDEV_PFM ;
 int PFRULE_PFM ;
 int TAILQ_INIT (int *) ;
 int bcopy (struct pf_rule*,struct pf_rule*,int) ;
 int kauth_cred_getuid (int ) ;

__attribute__((used)) static void
pf_rule_copyin(struct pf_rule *src, struct pf_rule *dst, struct proc *p,
    int minordev)
{
 bcopy(src, dst, sizeof (struct pf_rule));

 dst->label[sizeof (dst->label) - 1] = '\0';
 dst->ifname[sizeof (dst->ifname) - 1] = '\0';
 dst->qname[sizeof (dst->qname) - 1] = '\0';
 dst->pqname[sizeof (dst->pqname) - 1] = '\0';
 dst->tagname[sizeof (dst->tagname) - 1] = '\0';
 dst->match_tagname[sizeof (dst->match_tagname) - 1] = '\0';
 dst->overload_tblname[sizeof (dst->overload_tblname) - 1] = '\0';

 dst->cuid = kauth_cred_getuid(p->p_ucred);
 dst->cpid = p->p_pid;

 dst->anchor = ((void*)0);
 dst->kif = ((void*)0);
 dst->overload_tbl = ((void*)0);

 TAILQ_INIT(&dst->rpool.list);
 dst->rpool.cur = ((void*)0);


 dst->states = 0;
 dst->src_nodes = 0;

 dst->entries.tqe_prev = ((void*)0);
 dst->entries.tqe_next = ((void*)0);
 if ((uint8_t)minordev == PFDEV_PFM)
  dst->rule_flag |= PFRULE_PFM;
}
