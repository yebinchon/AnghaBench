#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int moov_written; int flags; } ;
typedef  TYPE_1__ MOVMuxContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FF_MOV_FLAG_DELAY_MOOV ; 
 int FUNC0 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC1(AVFormatContext *s, int force)
{
    MOVMuxContext *mov = s->priv_data;
    int had_moov = mov->moov_written;
    int ret = FUNC0(s, force);
    if (ret < 0)
        return ret;
    // If using delay_moov, the first flush only wrote the moov,
    // not the actual moof+mdat pair, thus flush once again.
    if (!had_moov && mov->flags & FF_MOV_FLAG_DELAY_MOOV)
        ret = FUNC0(s, force);
    return ret;
}