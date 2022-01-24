#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  pb; TYPE_2__** streams; } ;
struct TYPE_6__ {TYPE_1__* codecpar; } ;
struct TYPE_5__ {int /*<<< orphan*/  block_align; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(AVFormatContext *s, AVPacket *pkt)
{
    AVStream *st = s->streams[0];

    return FUNC0(s->pb, pkt, st->codecpar->block_align);
}