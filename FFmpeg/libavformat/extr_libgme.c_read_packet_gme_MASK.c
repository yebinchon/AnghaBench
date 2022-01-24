#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {int size; scalar_t__ data; } ;
struct TYPE_7__ {int /*<<< orphan*/  music_emu; } ;
typedef  TYPE_1__ GMEContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AUDIO_PKT_SIZE ; 
 int AVERROR_EOF ; 
 int AVERROR_EXTERNAL ; 
 int FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,short*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, AVPacket *pkt)
{
    GMEContext *gme = s->priv_data;
    int n_samples = AUDIO_PKT_SIZE / 2;
    int ret;

    if (FUNC2(gme->music_emu))
        return AVERROR_EOF;

    if ((ret = FUNC0(pkt, AUDIO_PKT_SIZE)) < 0)
        return ret;

    if (FUNC1(gme->music_emu, n_samples, (short *)pkt->data))
        return AVERROR_EXTERNAL;
    pkt->size = AUDIO_PKT_SIZE;

    return 0;
}