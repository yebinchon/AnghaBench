
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ledger_template_info {int lti_units; int lti_group; int lti_name; } ;
struct entry_template {int et_units; int et_group; int et_key; } ;
typedef TYPE_1__* ledger_t ;
struct TYPE_7__ {TYPE_1__* ledger; } ;
struct TYPE_6__ {struct entry_template* lt_entries; } ;
struct TYPE_5__ {int l_size; TYPE_2__* l_template; } ;


 int EINVAL ;
 int ENOMEM ;
 int LEDGER_NAME_MAX ;
 TYPE_4__* current_task () ;
 struct ledger_template_info* kalloc (int) ;
 int memset (struct ledger_template_info*,int ,int) ;
 int strlcpy (int ,int ,int ) ;
 int template_lock (TYPE_2__*) ;
 int template_unlock (TYPE_2__*) ;

int
ledger_template_info(void **buf, int *len)
{
 struct ledger_template_info *lti;
 struct entry_template *et;
 int i;
 ledger_t l;





 l = current_task()->ledger;
 if ((*len < 0) || (l == ((void*)0)))
  return (EINVAL);

 if (*len > l->l_size)
   *len = l->l_size;
 lti = kalloc((*len) * sizeof (struct ledger_template_info));
 if (lti == ((void*)0))
  return (ENOMEM);
 *buf = lti;

 template_lock(l->l_template);
 et = l->l_template->lt_entries;

 for (i = 0; i < *len; i++) {
  memset(lti, 0, sizeof (*lti));
  strlcpy(lti->lti_name, et->et_key, LEDGER_NAME_MAX);
  strlcpy(lti->lti_group, et->et_group, LEDGER_NAME_MAX);
  strlcpy(lti->lti_units, et->et_units, LEDGER_NAME_MAX);
  et++;
  lti++;
 }
 template_unlock(l->l_template);

 return (0);
}
