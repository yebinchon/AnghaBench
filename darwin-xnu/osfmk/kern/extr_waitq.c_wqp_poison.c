
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* wqp_wq_id; void* wqp_next_id; } ;
struct wq_prepost {TYPE_1__ wqp_post; } ;
struct lt_elem {int dummy; } ;
struct link_table {int dummy; } ;



 void* WQP_POST_POISON ;

 int wqp_type (struct wq_prepost*) ;

__attribute__((used)) static void wqp_poison(struct link_table *table, struct lt_elem *elem)
{
 struct wq_prepost *wqp = (struct wq_prepost *)elem;
 (void)table;

 switch (wqp_type(wqp)) {
 case 128:
  break;
 case 129:
  wqp->wqp_post.wqp_next_id = WQP_POST_POISON;
  wqp->wqp_post.wqp_wq_id = WQP_POST_POISON;
  break;
 default:
  break;
 }
}
