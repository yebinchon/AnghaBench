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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {int /*<<< orphan*/  extradata; scalar_t__ extradata_size; } ;
struct TYPE_10__ {int /*<<< orphan*/  codec_str; TYPE_2__* ctx; } ;
struct TYPE_9__ {TYPE_1__** streams; } ;
struct TYPE_8__ {TYPE_4__* codecpar; } ;
typedef  TYPE_3__ OutputStream ;
typedef  int /*<<< orphan*/  AVRational ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PKT_DATA_NEW_EXTRADATA ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, OutputStream *os,
                                   AVPacket *pkt, AVRational *frame_rate)
{
    AVCodecParameters *par = os->ctx->streams[0]->codecpar;
    uint8_t *extradata;
    int ret, extradata_size;

    if (par->extradata_size)
        return 0;

    extradata = FUNC0(pkt, AV_PKT_DATA_NEW_EXTRADATA, &extradata_size);
    if (!extradata_size)
        return 0;

    ret = FUNC1(par, extradata_size);
    if (ret < 0)
        return ret;

    FUNC2(par->extradata, extradata, extradata_size);

    FUNC3(s, par, frame_rate, os->codec_str, sizeof(os->codec_str));

    return 0;
}