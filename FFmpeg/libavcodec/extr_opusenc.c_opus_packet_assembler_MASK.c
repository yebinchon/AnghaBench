#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int size; scalar_t__ data; } ;
struct TYPE_8__ {int frames; } ;
struct TYPE_10__ {TYPE_2__* frame; int /*<<< orphan*/ * rc; TYPE_1__ packet; } ;
struct TYPE_9__ {int framebits; } ;
typedef  TYPE_3__ OpusEncContext ;
typedef  TYPE_4__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__,int*,int*) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(OpusEncContext *s, AVPacket *avpkt)
{
    int offset, fsize_needed;

    /* Write toc */
    FUNC1(s, avpkt->data, &offset, &fsize_needed);

    /* Frame sizes if needed */
    if (fsize_needed) {
        for (int i = 0; i < s->packet.frames - 1; i++) {
            offset += FUNC2(avpkt->data + offset,
                                       s->frame[i].framebits >> 3);
        }
    }

    /* Packets */
    for (int i = 0; i < s->packet.frames; i++) {
        FUNC0(&s->rc[i], avpkt->data + offset,
                           s->frame[i].framebits >> 3);
        offset += s->frame[i].framebits >> 3;
    }

    avpkt->size = offset;
}