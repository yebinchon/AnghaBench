
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ awakeme; scalar_t__ ctime; int id; } ;
typedef TYPE_1__ job ;


 int JOB_ID_LEN ;
 int memcmp (int ,int ,int ) ;

int skiplistCompareJobsToAwake(const void *a, const void *b) {
    const job *ja = a, *jb = b;

    if (ja->awakeme > jb->awakeme) return 1;
    if (jb->awakeme > ja->awakeme) return -1;
    if (ja->ctime > jb->ctime) return 1;
    if (jb->ctime > ja->ctime) return -1;
    return memcmp(ja->id,jb->id,JOB_ID_LEN);
}
