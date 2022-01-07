
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ left_setid; scalar_t__ right_setid; } ;
struct TYPE_3__ {scalar_t__ id; } ;
struct waitq_link {TYPE_2__ wql_link; TYPE_1__ wql_setid; } ;
struct waitq {scalar_t__ waitq_set_id; } ;


 scalar_t__ WQL_LINK ;
 int WQ_ITERATE_CONTINUE ;
 int WQ_ITERATE_INVALID ;
 int WQ_ITERATE_UNLINKED ;
 int assert (int) ;
 int wqdbg_v (char*) ;
 struct waitq_link* wql_get_link (scalar_t__) ;
 int wql_invalidate (struct waitq_link*) ;
 int wql_put_link (struct waitq_link*) ;
 scalar_t__ wql_type (struct waitq_link*) ;

__attribute__((used)) static inline int waitq_maybe_remove_link(struct waitq *waitq,
       uint64_t setid,
       struct waitq_link *parent,
       struct waitq_link *left,
       struct waitq_link *right)
{
 uint64_t *wq_setid = &waitq->waitq_set_id;
 if (*wq_setid == parent->wql_setid.id) {
  if (!left && !right) {

   wql_invalidate(parent);
   wqdbg_v("S1, L+R");
   *wq_setid = 0;
   return WQ_ITERATE_INVALID;
  } else if (!left || left->wql_setid.id == setid) {





   *wq_setid = right ? right->wql_setid.id : 0;
   wql_invalidate(parent);
   wqdbg_v("S1, L");
   return left ? WQ_ITERATE_UNLINKED : WQ_ITERATE_INVALID;
  } else if (!right || right->wql_setid.id == setid) {





   *wq_setid = left ? left->wql_setid.id : 0;
   wql_invalidate(parent);
   wqdbg_v("S1, R");
   return right ? WQ_ITERATE_UNLINKED : WQ_ITERATE_INVALID;
  }
 }





 assert(left || right);
 if (left && wql_type(left) == WQL_LINK) {
  uint64_t Ll, Lr;
  struct waitq_link *linkLl, *linkLr;
  assert(left->wql_setid.id != setid);
  Ll = left->wql_link.left_setid;
  Lr = left->wql_link.right_setid;
  linkLl = wql_get_link(Ll);
  linkLr = wql_get_link(Lr);
  if (!linkLl && !linkLr) {




   wql_invalidate(left);
   wqdbg_v("S2, Ll+Lr");
   return WQ_ITERATE_INVALID;
  } else if (!linkLl || Ll == setid) {

   parent->wql_link.left_setid = Lr;
   wql_invalidate(left);
   wql_put_link(linkLl);
   wql_put_link(linkLr);
   wqdbg_v("S2, Ll");
   return linkLl ? WQ_ITERATE_UNLINKED : WQ_ITERATE_INVALID;
  } else if (!linkLr || Lr == setid) {

   parent->wql_link.left_setid = Ll;
   wql_invalidate(left);
   wql_put_link(linkLr);
   wql_put_link(linkLl);
   wqdbg_v("S2, Lr");
   return linkLr ? WQ_ITERATE_UNLINKED : WQ_ITERATE_INVALID;
  }
  wql_put_link(linkLl);
  wql_put_link(linkLr);
 }

 if (right && wql_type(right) == WQL_LINK) {
  uint64_t Rl, Rr;
  struct waitq_link *linkRl, *linkRr;
  assert(right->wql_setid.id != setid);
  Rl = right->wql_link.left_setid;
  Rr = right->wql_link.right_setid;
  linkRl = wql_get_link(Rl);
  linkRr = wql_get_link(Rr);
  if (!linkRl && !linkRr) {




   wql_invalidate(right);
   wqdbg_v("S2, Rl+Rr");
   return WQ_ITERATE_INVALID;
  } else if (!linkRl || Rl == setid) {

   parent->wql_link.right_setid = Rr;
   wql_invalidate(right);
   wql_put_link(linkRl);
   wql_put_link(linkRr);
   wqdbg_v("S2, Rl");
   return linkRl ? WQ_ITERATE_UNLINKED : WQ_ITERATE_INVALID;
  } else if (!linkRr || Rr == setid) {

   parent->wql_link.right_setid = Rl;
   wql_invalidate(right);
   wql_put_link(linkRl);
   wql_put_link(linkRr);
   wqdbg_v("S2, Rr");
   return linkRr ? WQ_ITERATE_UNLINKED : WQ_ITERATE_INVALID;
  }
  wql_put_link(linkRl);
  wql_put_link(linkRr);
 }

 return WQ_ITERATE_CONTINUE;
}
