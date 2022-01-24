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
struct snd_interval {unsigned int max; scalar_t__ integer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct snd_interval* FUNC1 (struct snd_pcm_hw_params*,int) ; 

__attribute__((used)) static unsigned int FUNC2(struct snd_pcm_hw_params *p, int n)
{
    if (FUNC0(n))
    {
        struct snd_interval *i = FUNC1(p, n);
        if (i->integer)
            return i->max;
    }
    return 0;
}