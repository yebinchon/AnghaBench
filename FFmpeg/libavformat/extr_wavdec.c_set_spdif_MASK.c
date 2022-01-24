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
typedef  int /*<<< orphan*/  int64_t ;
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_10__ {int spdif; } ;
typedef  TYPE_3__ WAVDemuxContext ;
struct TYPE_11__ {int /*<<< orphan*/  pb; TYPE_2__** streams; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int codec_tag; int codec_id; } ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVPROBE_SCORE_EXTENSION ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ CONFIG_SPDIF_DEMUXER ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(AVFormatContext *s, WAVDemuxContext *wav)
{
    if (CONFIG_SPDIF_DEMUXER && s->streams[0]->codecpar->codec_tag == 1) {
        enum AVCodecID codec;
        int len = 1<<16;
        int ret = FUNC8(s->pb, len);

        if (ret >= 0) {
            uint8_t *buf = FUNC3(len);
            if (!buf) {
                ret = FUNC0(ENOMEM);
            } else {
                int64_t pos = FUNC6(s->pb);
                len = ret = FUNC4(s->pb, buf, len);
                if (len >= 0) {
                    ret = FUNC7(buf, len, &codec);
                    if (ret > AVPROBE_SCORE_EXTENSION) {
                        s->streams[0]->codecpar->codec_id = codec;
                        wav->spdif = 1;
                    }
                }
                FUNC5(s->pb, pos, SEEK_SET);
                FUNC1(buf);
            }
        }

        if (ret < 0)
            FUNC2(s, AV_LOG_WARNING, "Cannot check for SPDIF\n");
    }
}