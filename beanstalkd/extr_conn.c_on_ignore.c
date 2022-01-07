
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int watching_ct; } ;
typedef TYPE_1__ Tube ;
typedef int Ms ;


 int UNUSED_PARAMETER (size_t) ;
 int tube_dref (TYPE_1__*) ;

__attribute__((used)) static void
on_ignore(Ms *a, Tube *t, size_t i)
{
    UNUSED_PARAMETER(a);
    UNUSED_PARAMETER(i);
    t->watching_ct--;
    tube_dref(t);
}
