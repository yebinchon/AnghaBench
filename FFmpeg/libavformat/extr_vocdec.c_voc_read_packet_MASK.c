#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * streams; int /*<<< orphan*/  nb_streams; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, AVPacket *pkt)
{
    if (!s->nb_streams) {
        AVStream *st = FUNC1(s, NULL);
        if (!st)
            return FUNC0(ENOMEM);
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    }
    return FUNC2(s, pkt, s->streams[0], 0);
}