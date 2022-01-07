
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct entry_template {int dummy; } ;
typedef TYPE_1__* ledger_template_t ;
struct TYPE_4__ {char const* lt_name; int lt_refs; int lt_table_size; struct entry_template* lt_entries; int lt_lock; int * lt_zone; scalar_t__ lt_inuse; scalar_t__ lt_cnt; } ;


 int LCK_ATTR_NULL ;
 scalar_t__ kalloc (int) ;
 int kfree (TYPE_1__*,int) ;
 int lck_mtx_init (int *,int *,int ) ;
 int ledger_lck_grp ;

ledger_template_t
ledger_template_create(const char *name)
{
 ledger_template_t template;

 template = (ledger_template_t)kalloc(sizeof (*template));
 if (template == ((void*)0))
  return (((void*)0));

 template->lt_name = name;
 template->lt_refs = 1;
 template->lt_cnt = 0;
 template->lt_table_size = 1;
 template->lt_inuse = 0;
 template->lt_zone = ((void*)0);
 lck_mtx_init(&template->lt_lock, &ledger_lck_grp, LCK_ATTR_NULL);

 template->lt_entries = (struct entry_template *)
     kalloc(sizeof (struct entry_template) * template->lt_table_size);
 if (template->lt_entries == ((void*)0)) {
  kfree(template, sizeof (*template));
  template = ((void*)0);
 }

 return (template);
}
