
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ledger_entry {int dummy; } ;
struct ledger {int dummy; } ;
typedef TYPE_1__* ledger_template_t ;
struct TYPE_3__ {int lt_cnt; int lt_initialized; } ;


 int pmap_ledger_alloc_init (size_t) ;

void
ledger_template_complete_secure_alloc(ledger_template_t template)
{
 size_t ledger_size;
 ledger_size = sizeof(struct ledger) + (template->lt_cnt * sizeof(struct ledger_entry));
 pmap_ledger_alloc_init(ledger_size);
 template->lt_initialized = 1;
}
