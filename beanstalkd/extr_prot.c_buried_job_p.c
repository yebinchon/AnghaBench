
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buried; } ;
typedef TYPE_1__ Tube ;


 int job_list_is_empty (int *) ;

__attribute__((used)) static int
buried_job_p(Tube *t)
{

    return !job_list_is_empty(&t->buried);
}
