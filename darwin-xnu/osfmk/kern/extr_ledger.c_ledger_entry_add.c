
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct entry_template {int * et_callback; int et_flags; int et_units; int et_group; int et_key; } ;
typedef int spl_t ;
typedef TYPE_1__* ledger_template_t ;
struct TYPE_7__ {size_t lt_cnt; size_t lt_table_size; struct entry_template* lt_entries; int * lt_zone; } ;


 scalar_t__ LEDGER_NAME_MAX ;
 int LF_ENTRY_ACTIVE ;
 int TEMPLATE_IDLE (int ,TYPE_1__*) ;
 int TEMPLATE_INUSE (int ,TYPE_1__*) ;
 struct entry_template* kalloc (int) ;
 int kfree (struct entry_template*,int) ;
 int memcpy (struct entry_template*,struct entry_template*,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ os_mul_overflow (int,int,int*) ;
 int strlcpy (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int template_lock (TYPE_1__*) ;
 int template_unlock (TYPE_1__*) ;

int
ledger_entry_add(ledger_template_t template, const char *key,
    const char *group, const char *units)
{
 int idx;
 struct entry_template *et;

 if ((key == ((void*)0)) || (strlen(key) >= LEDGER_NAME_MAX) || (template->lt_zone != ((void*)0)))
  return (-1);

 template_lock(template);


 if (template->lt_cnt == template->lt_table_size) {
  struct entry_template *new_entries, *old_entries;
  int old_cnt, old_sz, new_sz = 0;
  spl_t s;

  old_cnt = template->lt_table_size;
  old_sz = old_cnt * (int)(sizeof(struct entry_template));

  if (os_mul_overflow(old_sz, 2, &new_sz)) {
   template_unlock(template);
   return -1;
  }
  new_entries = kalloc(new_sz);
  if (new_entries == ((void*)0)) {
   template_unlock(template);
   return -1;
  }
  memcpy(new_entries, template->lt_entries, old_sz);
  memset(((char *)new_entries) + old_sz, 0, old_sz);

  template->lt_table_size = old_cnt * 2;

  old_entries = template->lt_entries;

  TEMPLATE_INUSE(s, template);
  template->lt_entries = new_entries;
  TEMPLATE_IDLE(s, template);

  kfree(old_entries, old_sz);
 }

 et = &template->lt_entries[template->lt_cnt];
 strlcpy(et->et_key, key, LEDGER_NAME_MAX);
 strlcpy(et->et_group, group, LEDGER_NAME_MAX);
 strlcpy(et->et_units, units, LEDGER_NAME_MAX);
 et->et_flags = LF_ENTRY_ACTIVE;
 et->et_callback = ((void*)0);

 idx = template->lt_cnt++;
 template_unlock(template);

 return (idx);
}
