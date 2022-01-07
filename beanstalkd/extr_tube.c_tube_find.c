
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ Tube ;
struct TYPE_5__ {size_t len; TYPE_1__** items; } ;


 int MAX_TUBE_NAME_LEN ;
 scalar_t__ strncmp (int ,char const*,int ) ;
 TYPE_2__ tubes ;

Tube *
tube_find(const char *name)
{
    size_t i;

    for (i = 0; i < tubes.len; i++) {
        Tube *t = tubes.items[i];
        if (strncmp(t->name, name, MAX_TUBE_NAME_LEN) == 0)
            return t;
    }
    return ((void*)0);
}
