#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t hashLog; scalar_t__ enableLdm; int /*<<< orphan*/  bucketSizeLog; } ;
typedef  TYPE_1__ ldmParams_t ;
typedef  int /*<<< orphan*/  ldmEntry_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 

size_t FUNC1(ldmParams_t params)
{
    size_t const ldmHSize = ((size_t)1) << params.hashLog;
    size_t const ldmBucketSizeLog = FUNC0(params.bucketSizeLog, params.hashLog);
    size_t const ldmBucketSize =
        ((size_t)1) << (params.hashLog - ldmBucketSizeLog);
    size_t const totalSize = ldmBucketSize + ldmHSize * sizeof(ldmEntry_t);
    return params.enableLdm ? totalSize : 0;
}