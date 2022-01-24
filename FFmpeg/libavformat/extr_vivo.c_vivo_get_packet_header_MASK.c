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
struct TYPE_5__ {unsigned int type; unsigned int sequence; int length; } ;
typedef  TYPE_1__ VivoContext ;
struct TYPE_6__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s)
{
    VivoContext *vivo = s->priv_data;
    AVIOContext *pb = s->pb;
    unsigned c, get_length = 0;

    if (FUNC1(pb))
        return AVERROR_EOF;

    c = FUNC2(pb);
    if (c == 0x82) {
        get_length = 1;
        c = FUNC2(pb);
    }

    vivo->type     = c >> 4;
    vivo->sequence = c & 0xF;

    switch (vivo->type) {
    case 0:   get_length =   1; break;
    case 1: vivo->length = 128; break;
    case 2:   get_length =   1; break;
    case 3: vivo->length =  40; break;
    case 4: vivo->length =  24; break;
    default:
        FUNC0(s, AV_LOG_ERROR, "unknown packet type %d\n", vivo->type);
        return AVERROR_INVALIDDATA;
    }

    if (get_length) {
        c = FUNC2(pb);
        vivo->length = c & 0x7F;
        if (c & 0x80) {
            c = FUNC2(pb);
            vivo->length = (vivo->length << 7) | (c & 0x7F);

            if (c & 0x80) {
                FUNC0(s, AV_LOG_ERROR, "coded length is more than two bytes\n");
                return AVERROR_INVALIDDATA;
            }
        }
    }

    return 0;
}