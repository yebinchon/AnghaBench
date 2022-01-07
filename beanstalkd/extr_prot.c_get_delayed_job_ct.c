
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_5__ {TYPE_1__ delay; } ;
typedef TYPE_2__ Tube ;
struct TYPE_6__ {size_t len; TYPE_2__** items; } ;


 TYPE_3__ tubes ;

__attribute__((used)) static uint
get_delayed_job_ct()
{
    size_t i;
    uint count = 0;

    for (i = 0; i < tubes.len; i++) {
        Tube *t = tubes.items[i];
        count += t->delay.len;
    }
    return count;
}
