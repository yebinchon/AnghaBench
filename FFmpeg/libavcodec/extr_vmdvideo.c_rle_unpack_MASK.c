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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const unsigned char *src, unsigned char *dest,
                      int src_count, int src_size, int dest_len)
{
    unsigned char *pd;
    int i, l, used = 0;
    unsigned char *dest_end = dest + dest_len;
    GetByteContext gb;
    uint16_t run_val;

    FUNC5(&gb, src, src_size);
    pd = dest;
    if (src_count & 1) {
        if (FUNC2(&gb) < 1)
            return 0;
        *pd++ = FUNC3(&gb);
        used++;
    }

    do {
        if (FUNC2(&gb) < 1)
            break;
        l = FUNC3(&gb);
        if (l & 0x80) {
            l = (l & 0x7F) * 2;
            if (dest_end - pd < l || FUNC2(&gb) < l)
                return FUNC6(&gb);
            FUNC1(&gb, pd, l);
            pd += l;
        } else {
            if (dest_end - pd < 2*l || FUNC2(&gb) < 2)
                return FUNC6(&gb);
            run_val = FUNC4(&gb);
            for (i = 0; i < l; i++) {
                FUNC0(pd, run_val);
                pd += 2;
            }
            l *= 2;
        }
        used += l;
    } while (used < src_count);

    return FUNC6(&gb);
}