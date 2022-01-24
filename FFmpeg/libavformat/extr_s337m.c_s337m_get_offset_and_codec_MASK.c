#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int AVERROR_PATCHWELCOME ; 
 int AV_CODEC_ID_DOLBY_E ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s,
                                      uint64_t state,
                                      int data_type, int data_size,
                                      int *offset, enum AVCodecID *codec)
{
    int word_bits;

    if (FUNC0(state)) {
        word_bits = 16;
    } else if (FUNC1(state)) {
        data_type >>= 8;
        data_size >>= 4;
        word_bits = 20;
    } else {
        data_type >>= 8;
        word_bits = 24;
    }

    if ((data_type & 0x1F) != 0x1C) {
        if (s)
            FUNC2(s, "Data type %#x in SMPTE 337M", data_type & 0x1F);
        return AVERROR_PATCHWELCOME;
    }

    if (codec)
        *codec = AV_CODEC_ID_DOLBY_E;

    switch (data_size / word_bits) {
    case 3648:
        *offset = 1920;
        break;
    case 3644:
        *offset = 2002;
        break;
    case 3640:
        *offset = 2000;
        break;
    case 3040:
        *offset = 1601;
        break;
    default:
        if (s)
            FUNC2(s, "Dolby E data size %d in SMPTE 337M", data_size);
        return AVERROR_PATCHWELCOME;
    }

    *offset -= 4;
    *offset *= ((word_bits + 7) >> 3) * 2;
    return 0;
}