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
struct TYPE_3__ {int fscale; float w; scalar_t__ nb_freq; } ;
typedef  TYPE_1__ ShowFreqsContext ;

/* Variables and functions */
#define  FS_LINEAR 130 
#define  FS_LOG 129 
#define  FS_RLOG 128 
 int FUNC0 (int,int) ; 

__attribute__((used)) static int FUNC1(ShowFreqsContext *s, int f)
{
    switch (s->fscale) {
    case FS_LINEAR:
        return (s->w/(float)s->nb_freq)*f;
    case FS_LOG:
        return s->w-FUNC0(s->w, (s->nb_freq-f-1)/(s->nb_freq-1.));
    case FS_RLOG:
        return FUNC0(s->w, f/(s->nb_freq-1.));
    }

    return 0;
}