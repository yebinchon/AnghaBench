
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int menu_id ;
struct TYPE_4__ {int enabled; } ;
typedef TYPE_1__ menu_entry ;


 int me_id2offset (TYPE_1__*,int ) ;

__attribute__((used)) static void me_enable(menu_entry *entries, menu_id id, int enable)
{
 int i = me_id2offset(entries, id);
 entries[i].enabled = enable;
}
