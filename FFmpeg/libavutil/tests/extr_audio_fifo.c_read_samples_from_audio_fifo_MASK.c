#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int channels; int nb_buffers; int sample_size; int /*<<< orphan*/  sample_fmt; int /*<<< orphan*/  nb_samples; } ;
typedef  TYPE_1__ AVAudioFifo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,void**,int) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void**) ; 

__attribute__((used)) static int FUNC6(AVAudioFifo* afifo, void ***output, int nb_samples)
{
    int i;
    int samples        = FUNC1(nb_samples, afifo->nb_samples);
    int tot_elements   = !FUNC4(afifo->sample_fmt)
                         ? samples : afifo->channels * samples;
    void **data_planes = FUNC3(afifo->nb_buffers, sizeof(void*));
    if (!data_planes)
        FUNC0("failed to allocate memory!");
    if (*output)
        FUNC5(afifo, *output);
    *output            = data_planes;

    for (i = 0; i < afifo->nb_buffers; ++i){
        data_planes[i] = FUNC3(tot_elements, afifo->sample_size);
        if (!data_planes[i])
            FUNC0("failed to allocate memory!");
    }

    return FUNC2(afifo, *output, nb_samples);
}