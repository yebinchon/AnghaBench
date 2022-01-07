
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* right_setid; void* left_setid; } ;
struct TYPE_4__ {int wql_set; } ;
struct waitq_link {int sl_free_ts; int sl_alloc_th; scalar_t__ sl_mkvalid_ts; int sl_mkvalid_bt; scalar_t__ sl_alloc_ts; int sl_alloc_bt; TYPE_1__ wql_link; TYPE_2__ wql_wqs; } ;
struct lt_elem {int dummy; } ;
struct link_table {int dummy; } ;


 int THREAD_NULL ;

 void* WQL_LINK_POISON ;

 int WQL_WQS_POISON ;
 int mach_absolute_time () ;
 int memset (int ,int ,int) ;
 int wql_type (struct waitq_link*) ;

__attribute__((used)) static void wql_poison(struct link_table *table, struct lt_elem *elem)
{
 struct waitq_link *link = (struct waitq_link *)elem;
 (void)table;

 switch (wql_type(link)) {
 case 128:
  link->wql_wqs.wql_set = WQL_WQS_POISON;
  break;
 case 129:
  link->wql_link.left_setid = WQL_LINK_POISON;
  link->wql_link.right_setid = WQL_LINK_POISON;
  break;
 default:
  break;
 }
}
