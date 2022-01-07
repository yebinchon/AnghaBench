
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
struct ledger_info {int li_entries; int li_id; int li_name; } ;
typedef TYPE_3__* ledger_t ;
struct TYPE_7__ {int l_size; int l_id; TYPE_1__* l_template; } ;
struct TYPE_6__ {TYPE_3__* ledger; } ;
struct TYPE_5__ {int lt_name; } ;


 int ENOENT ;
 int LEDGER_NAME_MAX ;
 int memset (struct ledger_info*,int ,int) ;
 int strlcpy (int ,int ,int ) ;

int
ledger_info(task_t task, struct ledger_info *info)
{
 ledger_t l;

 if ((l = task->ledger) == ((void*)0))
  return (ENOENT);

 memset(info, 0, sizeof (*info));

 strlcpy(info->li_name, l->l_template->lt_name, LEDGER_NAME_MAX);
 info->li_id = l->l_id;
 info->li_entries = l->l_size;
 return (0);
}
