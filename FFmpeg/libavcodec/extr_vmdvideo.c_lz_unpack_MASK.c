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
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 unsigned int QUEUE_MASK ; 
 int QUEUE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int,int) ; 

__attribute__((used)) static int FUNC9(const unsigned char *src, int src_len,
                      unsigned char *dest, int dest_len)
{
    unsigned char *d;
    unsigned char *d_end;
    unsigned char queue[QUEUE_SIZE];
    unsigned int qpos;
    unsigned int dataleft;
    unsigned int chainofs;
    unsigned int chainlen;
    unsigned int speclen;
    unsigned char tag;
    unsigned int i, j;
    GetByteContext gb;

    FUNC4(&gb, src, src_len);
    d = dest;
    d_end = d + dest_len;
    dataleft = FUNC3(&gb);
    FUNC8(queue, 0x20, QUEUE_SIZE);
    if (FUNC1(&gb) < 4)
        return AVERROR_INVALIDDATA;
    if (FUNC6(&gb) == 0x56781234) {
        FUNC7(&gb, 4);
        qpos = 0x111;
        speclen = 0xF + 3;
    } else {
        qpos = 0xFEE;
        speclen = 100;  /* no speclen */
    }

    while (dataleft > 0 && FUNC1(&gb) > 0) {
        tag = FUNC2(&gb);
        if ((tag == 0xFF) && (dataleft > 8)) {
            if (d_end - d < 8 || FUNC1(&gb) < 8)
                return AVERROR_INVALIDDATA;
            for (i = 0; i < 8; i++) {
                queue[qpos++] = *d++ = FUNC2(&gb);
                qpos &= QUEUE_MASK;
            }
            dataleft -= 8;
        } else {
            for (i = 0; i < 8; i++) {
                if (dataleft == 0)
                    break;
                if (tag & 0x01) {
                    if (d_end - d < 1 || FUNC1(&gb) < 1)
                        return AVERROR_INVALIDDATA;
                    queue[qpos++] = *d++ = FUNC2(&gb);
                    qpos &= QUEUE_MASK;
                    dataleft--;
                } else {
                    chainofs = FUNC0(&gb);
                    chainofs |= ((FUNC5(&gb) & 0xF0) << 4);
                    chainlen = (FUNC0(&gb) & 0x0F) + 3;
                    if (chainlen == speclen) {
                        chainlen = FUNC0(&gb) + 0xF + 3;
                    }
                    if (d_end - d < chainlen)
                        return AVERROR_INVALIDDATA;
                    for (j = 0; j < chainlen; j++) {
                        *d = queue[chainofs++ & QUEUE_MASK];
                        queue[qpos++] = *d++;
                        qpos &= QUEUE_MASK;
                    }
                    dataleft -= chainlen;
                }
                tag >>= 1;
            }
        }
    }
    return d - dest;
}