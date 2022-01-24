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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const unsigned char *FUNC8(const unsigned char *src,
                                                 const unsigned char *src_end,
                                                 unsigned char *dst, int dst_size)
{
    int i, len, sz;
    GetBitContext gb;
    int code_table[64];

    /* get the rle codes */
    FUNC5(&gb, src, (src_end - src) * 8);
    for (i = 0, sz = 0; i < 64 && sz < dst_size; i++) {
        if (FUNC3(&gb) < 4)
            return NULL;
        code_table[i] = FUNC4(&gb, 4);
        sz += FUNC0(code_table[i]);
    }
    src += (FUNC2(&gb) + 7) / 8;

    /* do the rle unpacking */
    for (i = 0; i < 64 && dst_size > 0; i++) {
        len = code_table[i];
        if (len < 0) {
            len = -len;
            if (src_end - src < 1)
                return NULL;
            FUNC7(dst, *src++, FUNC1(len, dst_size));
        } else {
            if (src_end - src < len)
                return NULL;
            FUNC6(dst, src, FUNC1(len, dst_size));
            src += len;
        }
        dst += len;
        dst_size -= len;
    }
    return src;
}