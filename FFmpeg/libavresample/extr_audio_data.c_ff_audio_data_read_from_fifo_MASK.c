#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nb_samples; scalar_t__ data; scalar_t__ read_only; } ;
typedef  TYPE_1__ AudioData ;
typedef  int /*<<< orphan*/  AVAudioFifo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ *,void**,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 

int FUNC3(AVAudioFifo *af, AudioData *a, int nb_samples)
{
    int ret;

    if (a->read_only)
        return FUNC0(EINVAL);

    ret = FUNC2(a, nb_samples);
    if (ret < 0)
        return ret;

    ret = FUNC1(af, (void **)a->data, nb_samples);
    if (ret >= 0)
        a->nb_samples = ret;
    return ret;
}