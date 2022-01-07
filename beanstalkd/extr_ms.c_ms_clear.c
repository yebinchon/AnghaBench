
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int onremove; int oninsert; int items; } ;
typedef TYPE_1__ Ms ;


 int free (int ) ;
 scalar_t__ ms_delete (TYPE_1__*,int ) ;
 int ms_init (TYPE_1__*,int ,int ) ;

void
ms_clear(Ms *a)
{
    while (ms_delete(a, 0));
    free(a->items);
    ms_init(a, a->oninsert, a->onremove);
}
