
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int watching_ct; } ;
typedef TYPE_1__ Tube ;
typedef int Ms ;


 int UNUSED_PARAMETER (size_t) ;
 int tube_iref (TYPE_1__*) ;

__attribute__((used)) static void
on_watch(Ms *a, Tube *t, size_t i)
{
    UNUSED_PARAMETER(a);
    UNUSED_PARAMETER(i);
    tube_iref(t);
    t->watching_ct++;
}
