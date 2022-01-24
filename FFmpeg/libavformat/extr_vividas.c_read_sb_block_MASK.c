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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 

__attribute__((used)) static uint8_t *FUNC7(AVIOContext *src, unsigned *size,
                              uint32_t *key, unsigned expected_size)
{
    uint8_t *buf;
    uint8_t ibuf[8], sbuf[8];
    uint32_t k2;
    unsigned n;

    if (FUNC2(src, ibuf, 8) < 8)
        return NULL;

    k2 = *key;
    FUNC3(ibuf, sbuf, 8, *key, &k2, 0);

    n = FUNC4(sbuf+2, 6);

    if (sbuf[0] != 'S' || sbuf[1] != 'B' || (expected_size>0 && n != expected_size)) {
        uint32_t tmpkey = FUNC6(ibuf, expected_size);
        k2 = tmpkey;
        FUNC3(ibuf, sbuf, 8, tmpkey, &k2, 0);
        n = FUNC4(sbuf+2, 6);
        if (sbuf[0] != 'S' || sbuf[1] != 'B' || expected_size != n)
            return NULL;
        *key = tmpkey;
    }

    if (n < 8)
        return NULL;

    buf = FUNC1(n);
    if (!buf)
        return NULL;

    FUNC5(buf, sbuf, 8);

    *size = n;
    n -= 8;

    if (FUNC2(src, buf+8, n) < n) {
        FUNC0(buf);
        return NULL;
    }

    FUNC3(buf + 8, buf + 8, n, *key, &k2, 0);

    return buf;
}