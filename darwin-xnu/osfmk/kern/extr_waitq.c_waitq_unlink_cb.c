
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int right_setid; int left_setid; } ;
struct waitq_link {TYPE_1__ wql_link; } ;
struct waitq {int dummy; } ;


 scalar_t__ WQL_LINK ;
 int WQ_ITERATE_CONTINUE ;
 int WQ_ITERATE_INVALID ;
 int waitq_maybe_remove_link (struct waitq*,int ,struct waitq_link*,struct waitq_link*,struct waitq_link*) ;
 struct waitq_link* wql_get_link (int ) ;
 int wql_is_valid (struct waitq_link*) ;
 int wql_put_link (struct waitq_link*) ;
 scalar_t__ wql_type (struct waitq_link*) ;

__attribute__((used)) static int waitq_unlink_cb(struct waitq *waitq, void *ctx,
      struct waitq_link *link)
{
 uint64_t setid = *((uint64_t *)ctx);
 struct waitq_link *right, *left;
 int ret = 0;

 if (wql_type(link) != WQL_LINK)
  return WQ_ITERATE_CONTINUE;

 do {
  left = wql_get_link(link->wql_link.left_setid);
  right = wql_get_link(link->wql_link.right_setid);

  ret = waitq_maybe_remove_link(waitq, setid, link, left, right);

  wql_put_link(left);
  wql_put_link(right);

  if (!wql_is_valid(link))
   return WQ_ITERATE_INVALID;

 } while (ret == WQ_ITERATE_INVALID);

 return ret;
}
