
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_4__ {int job_cond; int job_mutex; } ;
typedef TYPE_1__ ZSTDMT_jobDescription ;
typedef size_t U32 ;


 int ZSTD_free (TYPE_1__*,int ) ;
 int ZSTD_pthread_cond_destroy (int *) ;
 int ZSTD_pthread_mutex_destroy (int *) ;

__attribute__((used)) static void ZSTDMT_freeJobsTable(ZSTDMT_jobDescription* jobTable, U32 nbJobs, ZSTD_customMem cMem)
{
    U32 jobNb;
    if (jobTable == ((void*)0)) return;
    for (jobNb=0; jobNb<nbJobs; jobNb++) {
        ZSTD_pthread_mutex_destroy(&jobTable[jobNb].job_mutex);
        ZSTD_pthread_cond_destroy(&jobTable[jobNb].job_cond);
    }
    ZSTD_free(jobTable, cMem);
}
