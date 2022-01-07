
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* coalition_t ;
struct TYPE_5__ {int efficient; } ;


 int TRUE ;
 int coalition_lock (TYPE_1__*) ;
 int coalition_unlock (TYPE_1__*) ;

void coalition_set_efficient(coalition_t coal)
{
    coalition_lock(coal);
    coal->efficient = TRUE;
    coalition_unlock(coal);
}
