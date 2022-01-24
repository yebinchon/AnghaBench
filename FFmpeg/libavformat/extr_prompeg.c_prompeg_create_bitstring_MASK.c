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
typedef  int uint8_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_6__ {int packet_size; int /*<<< orphan*/  length_recovery; int /*<<< orphan*/  bitstring_size; } ;
typedef  TYPE_2__ PrompegContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(URLContext *h, const uint8_t *buf, int size,
        uint8_t **bitstring) {
    PrompegContext *s = h->priv_data;
    uint8_t *b;

    if (size < 12 || (buf[0] & 0xc0) != 0x80 || (buf[1] & 0x7f) != 0x21) {
        FUNC2(h, AV_LOG_ERROR, "Unsupported stream format (expected MPEG-TS over RTP)\n");
        return FUNC0(EINVAL);
    }
    if (size != s->packet_size) {
        FUNC2(h, AV_LOG_ERROR, "The RTP packet size must be constant (set pkt_size)\n");
        return FUNC0(EINVAL);
    }

    *bitstring = FUNC3(s->bitstring_size);
    if (!*bitstring) {
        FUNC2(h, AV_LOG_ERROR, "Failed to allocate the bitstring buffer\n");
        return FUNC0(ENOMEM);
    }
    b = *bitstring;

    // P, X, CC
    b[0] = buf[0] & 0x3f;
    // M, PT
    b[1] = buf[1];
    // Timestamp
    b[2] = buf[4];
    b[3] = buf[5];
    b[4] = buf[6];
    b[5] = buf[7];
    /*
     * length_recovery: the unsigned network-ordered sum of lengths of CSRC,
     * padding, extension and media payload
     */
    FUNC1(b + 6, s->length_recovery);
    // Payload
    FUNC4(b + 8, buf + 12, s->length_recovery);

    return 0;
}