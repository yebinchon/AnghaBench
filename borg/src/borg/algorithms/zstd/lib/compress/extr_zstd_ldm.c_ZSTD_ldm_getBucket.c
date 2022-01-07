
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * hashTable; } ;
typedef TYPE_1__ ldmState_t ;
struct TYPE_6__ {size_t bucketSizeLog; } ;
typedef TYPE_2__ ldmParams_t ;
typedef int ldmEntry_t ;



__attribute__((used)) static ldmEntry_t* ZSTD_ldm_getBucket(
        ldmState_t* ldmState, size_t hash, ldmParams_t const ldmParams)
{
    return ldmState->hashTable + (hash << ldmParams.bucketSizeLog);
}
