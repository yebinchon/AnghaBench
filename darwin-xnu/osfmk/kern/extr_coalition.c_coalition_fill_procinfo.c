
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procinfo_coalinfo {int coalition_tasks; int coalition_type; int coalition_id; } ;
struct coalition {int type; int id; } ;


 int coalition_get_task_count (struct coalition*) ;

__attribute__((used)) static void coalition_fill_procinfo(struct coalition *coal,
        struct procinfo_coalinfo *coalinfo)
{
 coalinfo->coalition_id = coal->id;
 coalinfo->coalition_type = coal->type;
 coalinfo->coalition_tasks = coalition_get_task_count(coal);
}
