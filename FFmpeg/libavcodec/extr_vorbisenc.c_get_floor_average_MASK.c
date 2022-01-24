#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ values; TYPE_1__* list; } ;
typedef  TYPE_2__ vorbis_enc_floor ;
struct TYPE_4__ {size_t sort; int x; } ;

/* Variables and functions */
 size_t FUNC0 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int,scalar_t__) ; 
 scalar_t__ FUNC2 (float) ; 

__attribute__((used)) static float FUNC3(vorbis_enc_floor * fc, float *coeffs, int i)
{
    int begin = fc->list[fc->list[FUNC0(i-1, 0)].sort].x;
    int end   = fc->list[fc->list[FUNC1(i+1, fc->values - 1)].sort].x;
    int j;
    float average = 0;

    for (j = begin; j < end; j++)
        average += FUNC2(coeffs[j]);
    return average / (end - begin);
}