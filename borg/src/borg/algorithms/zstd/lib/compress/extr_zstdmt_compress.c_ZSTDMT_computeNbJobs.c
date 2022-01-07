
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx_params ;


 unsigned int MIN (unsigned int const,unsigned int) ;
 size_t ZSTDMT_computeTargetJobLog (int ) ;
 int assert (int) ;

__attribute__((used)) static unsigned
ZSTDMT_computeNbJobs(ZSTD_CCtx_params params, size_t srcSize, unsigned nbWorkers)
{
    assert(nbWorkers>0);
    { size_t const jobSizeTarget = (size_t)1 << ZSTDMT_computeTargetJobLog(params);
        size_t const jobMaxSize = jobSizeTarget << 2;
        size_t const passSizeMax = jobMaxSize * nbWorkers;
        unsigned const multiplier = (unsigned)(srcSize / passSizeMax) + 1;
        unsigned const nbJobsLarge = multiplier * nbWorkers;
        unsigned const nbJobsMax = (unsigned)(srcSize / jobSizeTarget) + 1;
        unsigned const nbJobsSmall = MIN(nbJobsMax, nbWorkers);
        return (multiplier>1) ? nbJobsLarge : nbJobsSmall;
} }
