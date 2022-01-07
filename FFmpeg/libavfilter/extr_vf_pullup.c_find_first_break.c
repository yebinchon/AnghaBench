
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int breaks; struct TYPE_3__* next; } ;
typedef TYPE_1__ PullupField ;


 int BREAK_LEFT ;
 int BREAK_RIGHT ;

__attribute__((used)) static int find_first_break(PullupField *f, int max)
{
    int i;

    for (i = 0; i < max; i++) {
        if (f->breaks & BREAK_RIGHT || f->next->breaks & BREAK_LEFT)
            return i + 1;
        f = f->next;
    }

    return 0;
}
