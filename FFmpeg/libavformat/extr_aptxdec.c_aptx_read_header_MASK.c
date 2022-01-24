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
struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {int bits_per_coded_sample; int /*<<< orphan*/  frame_size; int /*<<< orphan*/  block_align; int /*<<< orphan*/  codec_id; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  APTX_BLOCK_SIZE ; 
 int /*<<< orphan*/  APTX_PACKET_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_CODEC_ID_APTX ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(AVFormatContext *s)
{
    AVStream *st = FUNC1(s);
    if (!st)
        return FUNC0(ENOMEM);
    st->codecpar->codec_id = AV_CODEC_ID_APTX;
    st->codecpar->bits_per_coded_sample = 4;
    st->codecpar->block_align = APTX_BLOCK_SIZE;
    st->codecpar->frame_size = APTX_PACKET_SIZE;
    return 0;
}