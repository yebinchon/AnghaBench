#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/  pb; int /*<<< orphan*/ * priv_data; } ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int pid; int cc; scalar_t__ discontinuity; } ;
typedef  TYPE_1__ MpegTSWriteStream ;
typedef  int /*<<< orphan*/  MpegTSWrite ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int TS_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s, AVStream *st)
{
    MpegTSWrite *ts = s->priv_data;
    MpegTSWriteStream *ts_st = st->priv_data;
    uint8_t *q;
    uint8_t buf[TS_PACKET_SIZE];

    q    = buf;
    *q++ = 0x47;
    *q++ = ts_st->pid >> 8;
    *q++ = ts_st->pid;
    *q++ = 0x20 | ts_st->cc;   /* Adaptation only */
    /* Continuity Count field does not increment (see 13818-1 section 2.4.3.3) */
    *q++ = TS_PACKET_SIZE - 5; /* Adaptation Field Length */
    *q++ = 0x10;               /* Adaptation flags: PCR present */
    if (ts_st->discontinuity) {
        q[-1] |= 0x80;
        ts_st->discontinuity = 0;
    }

    /* PCR coded into 6 bytes */
    q += FUNC4(q, FUNC1(ts, s->pb));

    /* stuffing bytes */
    FUNC2(q, 0xFF, TS_PACKET_SIZE - (q - buf));
    FUNC3(s);
    FUNC0(s->pb, buf, TS_PACKET_SIZE);
}