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
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  const* out; int /*<<< orphan*/  const* in; int /*<<< orphan*/  error; int /*<<< orphan*/  const* out_end; int /*<<< orphan*/  const* in_end; } ;
typedef  TYPE_1__ LZOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  AV_LZO_INPUT_DEPLETED ; 
 int /*<<< orphan*/  AV_LZO_OUTPUT_FULL ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static inline void FUNC4(LZOContext *c, int cnt)
{
    register const uint8_t *src = c->in;
    register uint8_t *dst       = c->out;
    FUNC2(cnt >= 0);
    if (cnt > c->in_end - src) {
        cnt       = FUNC1(c->in_end - src, 0);
        c->error |= AV_LZO_INPUT_DEPLETED;
    }
    if (cnt > c->out_end - dst) {
        cnt       = FUNC1(c->out_end - dst, 0);
        c->error |= AV_LZO_OUTPUT_FULL;
    }
#if defined(INBUF_PADDED) && defined(OUTBUF_PADDED)
    AV_COPY32U(dst, src);
    src += 4;
    dst += 4;
    cnt -= 4;
    if (cnt > 0)
#endif
    FUNC3(dst, src, cnt);
    c->in  = src + cnt;
    c->out = dst + cnt;
}