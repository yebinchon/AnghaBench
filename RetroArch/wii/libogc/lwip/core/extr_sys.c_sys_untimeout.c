
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sys_timeout_handler ;
struct sys_timeouts {struct sys_timeout* next; } ;
struct sys_timeout {scalar_t__ h; void* arg; scalar_t__ time; struct sys_timeout* next; } ;


 int MEMP_SYS_TIMEOUT ;
 int memp_free (int ,struct sys_timeout*) ;
 struct sys_timeouts* sys_arch_timeouts () ;

void
sys_untimeout(sys_timeout_handler h, void *arg)
{
    struct sys_timeouts *timeouts;
    struct sys_timeout *prev_t, *t;

    timeouts = sys_arch_timeouts();

    if (timeouts->next == ((void*)0))
        return;

    for (t = timeouts->next, prev_t = ((void*)0); t != ((void*)0); prev_t = t, t = t->next)
    {
        if ((t->h == h) && (t->arg == arg))
        {


            if (prev_t == ((void*)0))
                timeouts->next = t->next;
            else
                prev_t->next = t->next;

            if (t->next != ((void*)0))
                t->next->time += t->time;
            memp_free(MEMP_SYS_TIMEOUT, t);
            return;
        }
    }
    return;
}
