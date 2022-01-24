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
struct TYPE_3__ {unsigned int bit_buf; int bit_left; int buf_end; int buf_ptr; } ;
typedef  TYPE_1__ PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline void FUNC3(PutBitContext *s, int n, unsigned int value)
{
    unsigned int bit_buf;
    int bit_left;

    FUNC1(n <= 31 && value < (1U << n));

    bit_buf  = s->bit_buf;
    bit_left = s->bit_left;

    bit_buf |= value << (32 - bit_left);
    if (n >= bit_left) {
        if (3 < s->buf_end - s->buf_ptr) {
            FUNC0(s->buf_ptr, bit_buf);
            s->buf_ptr += 4;
        } else {
            FUNC2(NULL, AV_LOG_ERROR, "Internal error, put_bits buffer too small\n");
            FUNC1(0);
        }
        bit_buf     = value >> bit_left;
        bit_left   += 32;
    }
    bit_left -= n;

    s->bit_buf  = bit_buf;
    s->bit_left = bit_left;
}