#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {scalar_t__ codec_id; scalar_t__ format; int width; int height; } ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_1__ AVCodecParameters ;
typedef  TYPE_2__ AVCodecDescriptor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_CODEC_ID_BMP ; 
 scalar_t__ AV_CODEC_ID_PNG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_BGR24 ; 
 scalar_t__ AV_PIX_FMT_BGRA ; 
 scalar_t__ AV_PIX_FMT_PAL8 ; 
 scalar_t__ AV_PIX_FMT_RGB32 ; 
 scalar_t__ AV_PIX_FMT_RGB555LE ; 
 scalar_t__ AV_PIX_FMT_RGBA ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, const AVCodecParameters *p)
{
    if (p->codec_id == AV_CODEC_ID_BMP) {
        if (p->format == AV_PIX_FMT_PAL8 && AV_PIX_FMT_RGB32 != AV_PIX_FMT_BGRA) {
            FUNC1(s, AV_LOG_ERROR, "Wrong endianness for bmp pixel format\n");
            return FUNC0(EINVAL);
        } else if (p->format != AV_PIX_FMT_PAL8 &&
                   p->format != AV_PIX_FMT_RGB555LE &&
                   p->format != AV_PIX_FMT_BGR24 &&
                   p->format != AV_PIX_FMT_BGRA) {
            FUNC1(s, AV_LOG_ERROR, "BMP must be 1bit, 4bit, 8bit, 16bit, 24bit, or 32bit\n");
            return FUNC0(EINVAL);
        }
    } else if (p->codec_id == AV_CODEC_ID_PNG) {
        if (p->format != AV_PIX_FMT_RGBA) {
            FUNC1(s, AV_LOG_ERROR, "PNG in ico requires pixel format to be rgba\n");
            return FUNC0(EINVAL);
        }
    } else {
        const AVCodecDescriptor *codesc = FUNC2(p->codec_id);
        FUNC1(s, AV_LOG_ERROR, "Unsupported codec %s\n", codesc ? codesc->name : "");
        return FUNC0(EINVAL);
    }

    if (p->width > 256 ||
        p->height > 256) {
        FUNC1(s, AV_LOG_ERROR, "Unsupported dimensions %dx%d (dimensions cannot exceed 256x256)\n", p->width, p->height);
        return FUNC0(EINVAL);
    }

    return 0;
}