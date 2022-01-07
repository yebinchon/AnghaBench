
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ledger_template_t ;
struct TYPE_6__ {scalar_t__ lt_refs; } ;


 int kfree (TYPE_1__*,int) ;
 int template_lock (TYPE_1__*) ;
 int template_unlock (TYPE_1__*) ;

void
ledger_template_dereference(ledger_template_t template)
{
 template_lock(template);
 template->lt_refs--;
 template_unlock(template);

 if (template->lt_refs == 0)
  kfree(template, sizeof (*template));
}
