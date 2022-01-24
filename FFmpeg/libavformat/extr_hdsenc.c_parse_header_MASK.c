#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {size_t nb_extra_packets; int* extra_packet_sizes; int metadata_size; void* metadata; void** extra_packets; } ;
typedef  TYPE_1__ OutputStream ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t FUNC2 (void**) ; 
 void* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int const*,int) ; 

__attribute__((used)) static int FUNC6(OutputStream *os, const uint8_t *buf, int buf_size)
{
    if (buf_size < 13)
        return AVERROR_INVALIDDATA;
    if (FUNC4(buf, "FLV", 3))
        return AVERROR_INVALIDDATA;
    buf      += 13;
    buf_size -= 13;
    while (buf_size >= 11 + 4) {
        int type = buf[0];
        int size = FUNC1(&buf[1]) + 11 + 4;
        if (size > buf_size)
            return AVERROR_INVALIDDATA;
        if (type == 8 || type == 9) {
            if (os->nb_extra_packets >= FUNC2(os->extra_packets))
                return AVERROR_INVALIDDATA;
            os->extra_packet_sizes[os->nb_extra_packets] = size;
            os->extra_packets[os->nb_extra_packets] = FUNC3(size);
            if (!os->extra_packets[os->nb_extra_packets])
                return FUNC0(ENOMEM);
            FUNC5(os->extra_packets[os->nb_extra_packets], buf, size);
            os->nb_extra_packets++;
        } else if (type == 0x12) {
            if (os->metadata)
                return AVERROR_INVALIDDATA;
            os->metadata_size = size - 11 - 4;
            os->metadata      = FUNC3(os->metadata_size);
            if (!os->metadata)
                return FUNC0(ENOMEM);
            FUNC5(os->metadata, buf + 11, os->metadata_size);
        }
        buf      += size;
        buf_size -= size;
    }
    if (!os->metadata)
        return AVERROR_INVALIDDATA;
    return 0;
}