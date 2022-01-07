
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int all_jobs_cap ;

__attribute__((used)) static int
_get_job_hash_index(uint64 job_id)
{
    return job_id % all_jobs_cap;
}
