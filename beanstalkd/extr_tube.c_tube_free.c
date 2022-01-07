
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* data; } ;
struct TYPE_7__ {TYPE_3__* data; } ;
struct TYPE_9__ {int waiting_conns; TYPE_2__ delay; TYPE_1__ ready; } ;
typedef TYPE_3__ Tube ;


 int free (TYPE_3__*) ;
 int ms_clear (int *) ;
 int ms_remove (int *,TYPE_3__*) ;
 int tubes ;

__attribute__((used)) static void
tube_free(Tube *t)
{
    ms_remove(&tubes, t);
    free(t->ready.data);
    free(t->delay.data);
    ms_clear(&t->waiting_conns);
    free(t);
}
