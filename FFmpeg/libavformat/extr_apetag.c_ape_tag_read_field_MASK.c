#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  key ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  filename ;
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_14__ {int codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_13__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/ * pb; } ;
struct TYPE_12__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  stream_index; } ;
struct TYPE_11__ {TYPE_5__* codecpar; TYPE_2__ attached_pic; int /*<<< orphan*/  index; int /*<<< orphan*/  disposition; int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ APE_TAG_FLAG_IS_BINARY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_ATTACHMENT ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int AV_CODEC_ID_NONE ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  AV_DISPOSITION_ATTACHED_PIC ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ INT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int* FUNC5 (scalar_t__) ; 
 TYPE_1__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int*,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC12 (int*) ; 

__attribute__((used)) static int FUNC13(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    uint8_t key[1024], *value;
    int64_t size, flags;
    int i, c;

    size = FUNC10(pb);  /* field size */
    flags = FUNC10(pb); /* field flags */
    for (i = 0; i < sizeof(key) - 1; i++) {
        c = FUNC8(pb);
        if (c < 0x20 || c > 0x7E)
            break;
        else
            key[i] = c;
    }
    key[i] = 0;
    if (c != 0) {
        FUNC4(s, AV_LOG_WARNING, "Invalid APE tag key '%s'.\n", key);
        return -1;
    }
    if (size > INT32_MAX - AV_INPUT_BUFFER_PADDING_SIZE) {
        FUNC4(s, AV_LOG_ERROR, "APE tag size too large.\n");
        return AVERROR_INVALIDDATA;
    }
    if (flags & APE_TAG_FLAG_IS_BINARY) {
        uint8_t filename[1024];
        enum AVCodecID id;
        int ret;
        AVStream *st = FUNC6(s, NULL);
        if (!st)
            return FUNC0(ENOMEM);

        ret = FUNC7(pb, size, filename, sizeof(filename));
        if (ret < 0)
            return ret;
        if (size <= ret) {
            FUNC4(s, AV_LOG_WARNING, "Skipping binary tag '%s'.\n", key);
            return 0;
        }
        size -= ret;

        FUNC1(&st->metadata, key, filename, 0);

        if ((id = FUNC12(filename)) != AV_CODEC_ID_NONE) {
            AVPacket pkt;
            int ret;

            ret = FUNC3(s->pb, &pkt, size);
            if (ret < 0) {
                FUNC4(s, AV_LOG_ERROR, "Error reading cover art.\n");
                return ret;
            }

            st->disposition      |= AV_DISPOSITION_ATTACHED_PIC;
            st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
            st->codecpar->codec_id   = id;

            st->attached_pic              = pkt;
            st->attached_pic.stream_index = st->index;
            st->attached_pic.flags       |= AV_PKT_FLAG_KEY;
        } else {
            if (FUNC11(s, st->codecpar, s->pb, size) < 0)
                return FUNC0(ENOMEM);
            st->codecpar->codec_type = AVMEDIA_TYPE_ATTACHMENT;
        }
    } else {
        value = FUNC5(size+1);
        if (!value)
            return FUNC0(ENOMEM);
        c = FUNC9(pb, value, size);
        if (c < 0) {
            FUNC2(value);
            return c;
        }
        value[c] = 0;
        FUNC1(&s->metadata, key, value, AV_DICT_DONT_STRDUP_VAL);
    }
    return 0;
}