#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_15__ {TYPE_1__ sample_aspect_ratio; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_12__ {int /*<<< orphan*/  num; int /*<<< orphan*/  den; } ;
struct TYPE_11__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_14__ {int /*<<< orphan*/  metadata; TYPE_3__ time_base; TYPE_2__ r_frame_rate; TYPE_6__* codecpar; } ;
struct TYPE_13__ {int isvp8; int /*<<< orphan*/ ** header; int /*<<< orphan*/ * header_len; } ;
typedef  TYPE_4__ OGGStreamContext ;
typedef  TYPE_5__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_6__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  VP8_HEADER_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC10 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, AVStream *st,
                                 OGGStreamContext *oggstream, int bitexact)
{
    AVCodecParameters *par = st->codecpar;
    uint8_t *p;

    /* first packet: VP8 header */
    p = FUNC3(VP8_HEADER_SIZE);
    if (!p)
        return FUNC0(ENOMEM);
    oggstream->header[0] = p;
    oggstream->header_len[0] = VP8_HEADER_SIZE;
    FUNC9(&p, 0x4f); // HDRID
    FUNC8(&p, "VP80", 4); // Identifier
    FUNC9(&p, 1); // HDRTYP
    FUNC9(&p, 1); // VMAJ
    FUNC9(&p, 0); // VMIN
    FUNC5(&p, par->width);
    FUNC5(&p, par->height);
    FUNC6(&p, par->sample_aspect_ratio.num);
    FUNC6(&p, par->sample_aspect_ratio.den);
    if (st->r_frame_rate.num > 0 && st->r_frame_rate.den > 0) {
        // OggVP8 requires pts to increase by 1 per visible frame, so use the least common
        // multiple framerate if available.
        FUNC2(s, AV_LOG_DEBUG, "Changing time base from %d/%d to %d/%d\n",
               st->time_base.num, st->time_base.den,
               st->r_frame_rate.den, st->r_frame_rate.num);
        FUNC4(st, 64, st->r_frame_rate.den, st->r_frame_rate.num);
    }
    FUNC7(&p, st->time_base.den);
    FUNC7(&p, st->time_base.num);

    /* optional second packet: VorbisComment */
    if (FUNC1(st->metadata, "", NULL, AV_DICT_IGNORE_SUFFIX)) {
        p = FUNC10(7, bitexact, &oggstream->header_len[1], &st->metadata, 0, NULL, 0);
        if (!p)
            return FUNC0(ENOMEM);
        oggstream->header[1] = p;
        FUNC9(&p, 0x4f); // HDRID
        FUNC8(&p, "VP80", 4); // Identifier
        FUNC9(&p, 2); // HDRTYP
        FUNC9(&p, 0x20);
    }

    oggstream->isvp8 = 1;

    return 0;
}