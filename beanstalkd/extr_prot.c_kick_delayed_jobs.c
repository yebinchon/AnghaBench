
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct TYPE_4__ {scalar_t__ len; scalar_t__* data; } ;
struct TYPE_5__ {TYPE_1__ delay; } ;
typedef TYPE_2__ Tube ;
typedef int Server ;
typedef int Job ;


 int kick_delayed_job (int *,int *) ;

__attribute__((used)) static uint
kick_delayed_jobs(Server *s, Tube *t, uint n)
{
    uint i;
    for (i = 0; (i < n) && (t->delay.len > 0); ++i) {
        kick_delayed_job(s, (Job *)t->delay.data[0]);
    }
    return i;
}
