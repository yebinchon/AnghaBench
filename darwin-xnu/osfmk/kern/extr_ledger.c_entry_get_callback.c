
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ledger_callback {int dummy; } ;
typedef int spl_t ;
typedef TYPE_2__* ledger_t ;
struct TYPE_8__ {TYPE_1__* lt_entries; } ;
struct TYPE_7__ {TYPE_4__* l_template; } ;
struct TYPE_6__ {struct ledger_callback* et_callback; } ;


 int TEMPLATE_IDLE (int ,TYPE_4__*) ;
 int TEMPLATE_INUSE (int ,TYPE_4__*) ;

__attribute__((used)) static inline struct ledger_callback *
entry_get_callback(ledger_t ledger, int entry)
{
 struct ledger_callback *callback;
 spl_t s;

 TEMPLATE_INUSE(s, ledger->l_template);
 callback = ledger->l_template->lt_entries[entry].et_callback;
 TEMPLATE_IDLE(s, ledger->l_template);

 return (callback);
}
