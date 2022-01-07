
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_4__ {struct TYPE_4__* ht_next; } ;
typedef TYPE_1__ Job ;


 int TUBE_ASSIGN (int ,int ) ;
 int assertf (int,char*) ;
 int default_tube ;
 int job_free (TYPE_1__*) ;
 TYPE_1__* make_job_with_id (int ,int ,int,int ,int ,int) ;
 int make_tube (char*) ;

void
cttest_job_hash_free_next()
{
    Job *a, *b;
    uint64 aid = 97, bid = 12386;

    TUBE_ASSIGN(default_tube, make_tube("default"));
    b = make_job_with_id(0, 0, 1, 0, default_tube, bid);
    a = make_job_with_id(0, 0, 1, 0, default_tube, aid);

    assertf(a->ht_next == b, "b should be chained to a");

    job_free(b);

    assertf(a->ht_next == ((void*)0), "job should be missing");
}
