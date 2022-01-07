
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pri; } ;
struct TYPE_5__ {TYPE_1__ r; } ;
typedef TYPE_2__ Job ;


 int TUBE_ASSIGN (int ,int ) ;
 int assertf (int,char*) ;
 int default_tube ;
 TYPE_2__* make_job (int,int ,int,int ,int ) ;
 int make_tube (char*) ;

void
cttest_job_creation()
{
    Job *j;

    TUBE_ASSIGN(default_tube, make_tube("default"));
    j = make_job(1, 0, 1, 0, default_tube);
    assertf(j->r.pri == 1, "priority should match");
}
