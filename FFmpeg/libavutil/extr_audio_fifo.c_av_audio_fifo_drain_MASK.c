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
struct TYPE_3__ {int nb_samples; int sample_size; int nb_buffers; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ AVAudioFifo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(AVAudioFifo *af, int nb_samples)
{
    int i, size;

    if (nb_samples < 0)
        return FUNC0(EINVAL);
    nb_samples = FUNC1(nb_samples, af->nb_samples);

    if (nb_samples) {
        size = nb_samples * af->sample_size;
        for (i = 0; i < af->nb_buffers; i++)
            FUNC2(af->buf[i], size);
        af->nb_samples -= nb_samples;
    }
    return 0;
}