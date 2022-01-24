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
struct TYPE_3__ {int* buf; int buf_size; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (int*) ; 
 int RIFF_TAG ; 
 int WAVE_TAG ; 

__attribute__((used)) static int FUNC1(const AVProbeData *p)
{
    int i;

    if ((FUNC0(&p->buf[0]) != RIFF_TAG) ||
        (FUNC0(&p->buf[8]) != WAVE_TAG) ||
        (FUNC0(&p->buf[16]) != 16))
    return 0;

    //We can't be sure that this is ACT and not regular WAV
    if (p->buf_size<512)
        return 0;

    for(i=44; i<256; i++)
        if(p->buf[i])
            return 0;

    if(p->buf[256]!=0x84)
        return 0;

    for(i=264; i<512; i++)
        if(p->buf[i])
            return 0;

    return AVPROBE_SCORE_MAX;
}