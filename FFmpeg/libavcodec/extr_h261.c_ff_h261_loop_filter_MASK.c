#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  mtype; } ;
struct TYPE_4__ {int linesize; int uvlinesize; int /*<<< orphan*/ ** dest; } ;
typedef  TYPE_1__ MpegEncContext ;
typedef  TYPE_2__ H261Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const) ; 

void FUNC2(MpegEncContext *s)
{
    H261Context *h       = (H261Context *)s;
    const int linesize   = s->linesize;
    const int uvlinesize = s->uvlinesize;
    uint8_t *dest_y      = s->dest[0];
    uint8_t *dest_cb     = s->dest[1];
    uint8_t *dest_cr     = s->dest[2];

    if (!(FUNC0(h->mtype)))
        return;

    FUNC1(dest_y,                    linesize);
    FUNC1(dest_y + 8,                linesize);
    FUNC1(dest_y + 8 * linesize,     linesize);
    FUNC1(dest_y + 8 * linesize + 8, linesize);
    FUNC1(dest_cb, uvlinesize);
    FUNC1(dest_cr, uvlinesize);
}