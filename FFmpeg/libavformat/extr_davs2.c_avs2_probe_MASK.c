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
typedef  int uint32_t ;
struct TYPE_3__ {int* buf; int buf_size; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int* FUNC6 (int const*,int const*,int*) ; 

__attribute__((used)) static int FUNC7(const AVProbeData *p)
{
    uint32_t code= -1, hds=0, pic=0, seq=0;
    uint8_t state=0;
    const uint8_t *ptr = p->buf, *end = p->buf + p->buf_size, *sqb=0;
    if (FUNC0(p->buf) != 0x1B0){
        return 0;
    }

    while (ptr < end) {
        ptr = FUNC6(ptr, end, &code);
        state = code & 0xFF;
        if ((code & 0xffffff00) == 0x100) {
            if (FUNC5(state)) {
                if (sqb && !hds) {
                    hds = ptr - sqb;
                }
                if (FUNC4(state)) {
                    if (!FUNC1(*ptr))
                        return 0;
                    sqb = ptr;
                    seq++;
                } else if (FUNC3(state)) {
                    pic++;
                } else if (FUNC2(state)) {
                    break;
                }
            }
        }
    }
    if (seq && hds >= 21 && pic){
        return AVPROBE_SCORE_EXTENSION + 2; // more than cavs
    }

    return 0;
}