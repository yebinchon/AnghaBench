#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ pts; } ;
struct TYPE_6__ {int duration; scalar_t__ last_delay; } ;
typedef  TYPE_1__ GIFContext ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(GIFContext *gif, AVPacket *prev, AVPacket *new)
{
    if (new && new->pts != AV_NOPTS_VALUE)
        gif->duration = FUNC0(new->pts - prev->pts);
    else if (!new && gif->last_delay >= 0)
        gif->duration = gif->last_delay;

    return gif->duration;
}