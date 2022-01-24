#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {scalar_t__ icy_metaint; scalar_t__ icy_data_read; } ;
typedef  TYPE_2__ HTTPContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int,scalar_t__) ; 
 int FUNC1 (TYPE_2__*,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC4(URLContext *h, int size)
{
    HTTPContext *s = h->priv_data;
    /* until next metadata packet */
    uint64_t remaining;

    if (s->icy_metaint < s->icy_data_read)
        return AVERROR_INVALIDDATA;
    remaining = s->icy_metaint - s->icy_data_read;

    if (!remaining) {
        /* The metadata packet is variable sized. It has a 1 byte header
         * which sets the length of the packet (divided by 16). If it's 0,
         * the metadata doesn't change. After the packet, icy_metaint bytes
         * of normal data follows. */
        uint8_t ch;
        int len = FUNC2(h, &ch, 1);
        if (len < 0)
            return len;
        if (ch > 0) {
            char data[255 * 16 + 1];
            int ret;
            len = ch * 16;
            ret = FUNC2(h, data, len);
            if (ret < 0)
                return ret;
            data[len + 1] = 0;
            if ((ret = FUNC1(s, "icy_metadata_packet", data, 0)) < 0)
                return ret;
            FUNC3(h, data);
        }
        s->icy_data_read = 0;
        remaining        = s->icy_metaint;
    }

    return FUNC0(size, remaining);
}