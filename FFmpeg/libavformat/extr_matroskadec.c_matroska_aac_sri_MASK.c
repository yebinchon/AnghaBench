#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int FUNC0 (int*) ; 
 int* avpriv_mpeg4audio_sample_rates ; 

__attribute__((used)) static int FUNC1(int samplerate)
{
    int sri;

    for (sri = 0; sri < FUNC0(avpriv_mpeg4audio_sample_rates); sri++)
        if (avpriv_mpeg4audio_sample_rates[sri] == samplerate)
            break;
    return sri;
}