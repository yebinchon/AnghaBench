
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int id; } ;
struct waitq_link {TYPE_1__ wql_setid; } ;
struct waitq {int dummy; } ;


 int LT_RESERVED ;
 int assert (int) ;
 int current_thread () ;
 scalar_t__ get_preemption_level () ;
 scalar_t__ waitq_wait_possible (int ) ;
 struct waitq_link* wql_alloc_link (int ) ;
 int wql_ensure_free_space () ;

uint64_t waitq_link_reserve(struct waitq *waitq)
{
 struct waitq_link *link;
 uint64_t reserved_id = 0;

 assert(get_preemption_level() == 0 && waitq_wait_possible(current_thread()));





 wql_ensure_free_space();

 (void)waitq;
 link = wql_alloc_link(LT_RESERVED);
 if (!link)
  return 0;

 reserved_id = link->wql_setid.id;

 return reserved_id;
}
