
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ledger_callback {void const* lc_param1; void const* lc_param0; scalar_t__ lc_func; } ;
struct entry_template {struct ledger_callback* et_callback; } ;
typedef TYPE_1__* ledger_template_t ;
typedef scalar_t__ ledger_callback_t ;
typedef int kern_return_t ;
struct TYPE_5__ {int lt_cnt; struct entry_template* lt_entries; } ;


 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 scalar_t__ kalloc (int) ;
 int kfree (struct ledger_callback*,int) ;
 int template_lock (TYPE_1__*) ;
 int template_unlock (TYPE_1__*) ;

kern_return_t
ledger_set_callback(ledger_template_t template, int entry,
   ledger_callback_t func, const void *param0, const void *param1)
{
 struct entry_template *et;
 struct ledger_callback *old_cb, *new_cb;

 if ((entry < 0) || (entry >= template->lt_cnt))
  return (KERN_INVALID_VALUE);

 if (func) {
  new_cb = (struct ledger_callback *)kalloc(sizeof (*new_cb));
  new_cb->lc_func = func;
  new_cb->lc_param0 = param0;
  new_cb->lc_param1 = param1;
 } else {
  new_cb = ((void*)0);
 }

 template_lock(template);
 et = &template->lt_entries[entry];
 old_cb = et->et_callback;
 et->et_callback = new_cb;
 template_unlock(template);
 if (old_cb)
  kfree(old_cb, sizeof (*old_cb));

 return (KERN_SUCCESS);
}
