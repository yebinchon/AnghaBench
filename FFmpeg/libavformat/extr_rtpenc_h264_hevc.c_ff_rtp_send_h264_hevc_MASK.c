#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {scalar_t__ nal_length_size; int /*<<< orphan*/  buf; int /*<<< orphan*/  buf_ptr; int /*<<< orphan*/  cur_timestamp; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ RTPMuxContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*,int,int) ; 

void FUNC4(AVFormatContext *s1, const uint8_t *buf1, int size)
{
    const uint8_t *r, *end = buf1 + size;
    RTPMuxContext *s = s1->priv_data;

    s->timestamp = s->cur_timestamp;
    s->buf_ptr   = s->buf;
    if (s->nal_length_size)
        r = FUNC1(buf1, end, s->nal_length_size) ? buf1 : end;
    else
        r = FUNC0(buf1, end);
    while (r < end) {
        const uint8_t *r1;

        if (s->nal_length_size) {
            r1 = FUNC1(r, end, s->nal_length_size);
            if (!r1)
                r1 = end;
            r += s->nal_length_size;
        } else {
            while (!*(r++));
            r1 = FUNC0(r, end);
        }
        FUNC3(s1, r, r1 - r, r1 == end);
        r = r1;
    }
    FUNC2(s1, 1);
}