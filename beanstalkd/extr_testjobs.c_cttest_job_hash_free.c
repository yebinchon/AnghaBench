
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int Job ;


 int TUBE_ASSIGN (int ,int ) ;
 int assertf (int,char*) ;
 int default_tube ;
 int job_find (int) ;
 int job_free (int *) ;
 int * make_job_with_id (int ,int ,int,int ,int ,int) ;
 int make_tube (char*) ;

void
cttest_job_hash_free()
{
    Job *j;
    uint64 jid = 83;

    TUBE_ASSIGN(default_tube, make_tube("default"));
    j = make_job_with_id(0, 0, 1, 0, default_tube, jid);
    job_free(j);

    assertf(!job_find(jid), "job should be missing");
}
