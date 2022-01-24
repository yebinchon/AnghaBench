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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int* avpriv_mpeg4audio_sample_rates ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC1(GetBitContext *gb, int *index)
{
    *index = FUNC0(gb, 4);
    return *index == 0x0f ? FUNC0(gb, 24) :
        avpriv_mpeg4audio_sample_rates[*index];
}