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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  MpegTSSection ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int SDT_TID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static int FUNC3(MpegTSSection *s, int tid, int id,
                                 int version, int sec_num, int last_sec_num,
                                 uint8_t *buf, int len)
{
    uint8_t section[1024], *q;
    unsigned int tot_len;
    /* reserved_future_use field must be set to 1 for SDT */
    unsigned int flags = tid == SDT_TID ? 0xf000 : 0xb000;

    tot_len = 3 + 5 + len + 4;
    /* check if not too big */
    if (tot_len > 1024)
        return AVERROR_INVALIDDATA;

    q    = section;
    *q++ = tid;
    FUNC2(&q, flags | (len + 5 + 4)); /* 5 byte header + 4 byte CRC */
    FUNC2(&q, id);
    *q++ = 0xc1 | (version << 1); /* current_next_indicator = 1 */
    *q++ = sec_num;
    *q++ = last_sec_num;
    FUNC0(q, buf, len);

    FUNC1(s, section, tot_len);
    return 0;
}