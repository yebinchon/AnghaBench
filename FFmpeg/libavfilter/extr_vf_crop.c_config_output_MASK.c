#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  format; TYPE_1__* src; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  out_sar; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef  TYPE_2__ CropContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int AV_PIX_FMT_FLAG_HWACCEL ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(AVFilterLink *link)
{
    CropContext *s = link->src->priv;
    const AVPixFmtDescriptor *desc = FUNC0(link->format);

    if (desc->flags & AV_PIX_FMT_FLAG_HWACCEL) {
        // Hardware frames adjust the cropping regions rather than
        // changing the frame size.
    } else {
        link->w = s->w;
        link->h = s->h;
    }
    link->sample_aspect_ratio = s->out_sar;

    return 0;
}