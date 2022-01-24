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
struct snd_mask {int* bits; } ;

/* Variables and functions */
 unsigned int SNDRV_MASK_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 struct snd_mask* FUNC1 (struct snd_pcm_hw_params*,int) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm_hw_params *p, int n, unsigned int bit)
{
    if (bit >= SNDRV_MASK_MAX)
        return;
    if (FUNC0(n))
    {
        struct snd_mask *m = FUNC1(p, n);
        m->bits[0] = 0;
        m->bits[1] = 0;
        m->bits[bit >> 5] |= (1 << (bit & 31));
    }
}