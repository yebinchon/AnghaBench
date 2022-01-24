#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ codec_type; } ;
struct TYPE_11__ {TYPE_2__** streams; int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {size_t stream_index; scalar_t__ duration; scalar_t__ pts; scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {TYPE_5__* codecpar; } ;
struct TYPE_8__ {int /*<<< orphan*/  duration; } ;
typedef  TYPE_1__ SMJPEGMuxContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVCodecParameters ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  SMJPEG_SNDD ; 
 int /*<<< orphan*/  SMJPEG_VIDD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, AVPacket *pkt)
{
    SMJPEGMuxContext *smc = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st = s->streams[pkt->stream_index];
    AVCodecParameters *par = st->codecpar;

    if (par->codec_type == AVMEDIA_TYPE_AUDIO)
        FUNC2(pb, SMJPEG_SNDD);
    else if (par->codec_type == AVMEDIA_TYPE_VIDEO)
        FUNC2(pb, SMJPEG_VIDD);
    else
        return 0;

    FUNC1(pb, pkt->pts);
    FUNC1(pb, pkt->size);
    FUNC3(pb, pkt->data, pkt->size);

    smc->duration = FUNC0(smc->duration, pkt->pts + pkt->duration);
    return 0;
}