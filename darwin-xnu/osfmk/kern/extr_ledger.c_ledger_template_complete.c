
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ledger_entry {int dummy; } ;
struct ledger {int dummy; } ;
typedef TYPE_1__* ledger_template_t ;
struct TYPE_3__ {int lt_cnt; int lt_initialized; int lt_name; int lt_zone; } ;


 size_t CONFIG_TASK_MAX ;
 int zinit (size_t,size_t,size_t,int ) ;

void
ledger_template_complete(ledger_template_t template)
{
 size_t ledger_size;
 ledger_size = sizeof(struct ledger) + (template->lt_cnt * sizeof(struct ledger_entry));
 template->lt_zone = zinit(ledger_size, CONFIG_TASK_MAX * ledger_size,
                        ledger_size,
                        template->lt_name);
 template->lt_initialized = 1;
}
