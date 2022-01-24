#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  boundary_tag; } ;
typedef  TYPE_1__ MPJPEGContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(AVFormatContext *s, AVPacket *pkt)
{
    MPJPEGContext *mpj = s->priv_data;
    FUNC0(s->pb, "Content-type: image/jpeg\r\n");
    FUNC0(s->pb, "Content-length: %d\r\n\r\n",
                pkt->size);
    FUNC1(s->pb, pkt->data, pkt->size);

    FUNC0(s->pb, "\r\n--%s\r\n", mpj->boundary_tag);
    return 0;
}