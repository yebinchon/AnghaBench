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
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_11__ {int size; int /*<<< orphan*/  flags; int /*<<< orphan*/  stream_index; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {TYPE_1__* codecpar; TYPE_4__ attached_pic; int /*<<< orphan*/  index; int /*<<< orphan*/  disposition; int /*<<< orphan*/ * priv_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  fc; } ;
struct TYPE_8__ {int codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  int /*<<< orphan*/  MOVStreamContext ;
typedef  TYPE_2__ MOVContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int AV_CODEC_ID_BMP ; 
 int AV_CODEC_ID_MJPEG ; 
 int AV_CODEC_ID_PNG ; 
 int /*<<< orphan*/  AV_DISPOSITION_ATTACHED_PIC ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(MOVContext *c, AVIOContext *pb, int type, int len)
{
    AVPacket pkt;
    AVStream *st;
    MOVStreamContext *sc;
    enum AVCodecID id;
    int ret;

    switch (type) {
    case 0xd:  id = AV_CODEC_ID_MJPEG; break;
    case 0xe:  id = AV_CODEC_ID_PNG;   break;
    case 0x1b: id = AV_CODEC_ID_BMP;   break;
    default:
        FUNC3(c->fc, AV_LOG_WARNING, "Unknown cover type: 0x%x.\n", type);
        FUNC6(pb, len);
        return 0;
    }

    st = FUNC5(c->fc, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    sc = FUNC4(sizeof(*sc));
    if (!sc)
        return FUNC0(ENOMEM);
    st->priv_data = sc;

    ret = FUNC2(pb, &pkt, len);
    if (ret < 0)
        return ret;

    if (pkt.size >= 8 && id != AV_CODEC_ID_BMP) {
        if (FUNC1(pkt.data) == 0x89504e470d0a1a0a) {
            id = AV_CODEC_ID_PNG;
        } else {
            id = AV_CODEC_ID_MJPEG;
        }
    }

    st->disposition              |= AV_DISPOSITION_ATTACHED_PIC;

    st->attached_pic              = pkt;
    st->attached_pic.stream_index = st->index;
    st->attached_pic.flags       |= AV_PKT_FLAG_KEY;

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id   = id;

    return 0;
}