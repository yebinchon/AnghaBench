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
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {unsigned int min; } ;

/* Variables and functions */
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params const*,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static unsigned int FUNC2(const struct snd_pcm_hw_params *p, int n)
{
    if (FUNC1(n))
    {
        const struct snd_interval *i = FUNC0(p, n);
        return i->min;
    }
    return 0;
}