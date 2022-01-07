
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* task_t ;
struct ledger_entry_info {int dummy; } ;
struct ledger_entry {int dummy; } ;
typedef TYPE_2__* ledger_t ;
struct TYPE_5__ {int l_size; struct ledger_entry* l_entries; } ;
struct TYPE_4__ {TYPE_2__* ledger; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ledger_entry_info* kalloc (int) ;
 int ledger_fill_entry_info (struct ledger_entry*,struct ledger_entry_info*,int ) ;
 int mach_absolute_time () ;

int
ledger_get_task_entry_info_multiple(task_t task, void **buf, int *len)
{
 struct ledger_entry_info *lei;
 struct ledger_entry *le;
 uint64_t now = mach_absolute_time();
 int i;
 ledger_t l;

 if ((*len < 0) || ((l = task->ledger) == ((void*)0)))
  return (EINVAL);

 if (*len > l->l_size)
   *len = l->l_size;
 lei = kalloc((*len) * sizeof (struct ledger_entry_info));
 if (lei == ((void*)0))
  return (ENOMEM);
 *buf = lei;

 le = l->l_entries;

 for (i = 0; i < *len; i++) {
  ledger_fill_entry_info(le, lei, now);
  le++;
  lei++;
 }

 return (0);
}
