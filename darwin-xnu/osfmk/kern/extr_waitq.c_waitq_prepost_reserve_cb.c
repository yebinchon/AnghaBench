
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int wql_set; } ;
struct waitq_link {TYPE_1__ wql_wqs; } ;
struct waitq {int dummy; } ;


 scalar_t__ WQL_WQS ;
 int WQ_ITERATE_CONTINUE ;
 scalar_t__ waitq_set_can_prepost (int ) ;
 scalar_t__ wql_type (struct waitq_link*) ;

__attribute__((used)) static int waitq_prepost_reserve_cb(struct waitq *waitq, void *ctx,
        struct waitq_link *link)
{
 uint32_t *num = (uint32_t *)ctx;
 (void)waitq;






 if (wql_type(link) == WQL_WQS) {




  if (waitq_set_can_prepost(link->wql_wqs.wql_set))
   *num += 2;
 }
 return WQ_ITERATE_CONTINUE;
}
