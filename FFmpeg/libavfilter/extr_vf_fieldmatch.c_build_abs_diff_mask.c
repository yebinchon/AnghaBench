
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ FFABS (scalar_t__ const) ;

__attribute__((used)) static void build_abs_diff_mask(const uint8_t *prvp, int prv_linesize,
                                const uint8_t *nxtp, int nxt_linesize,
                                uint8_t *tbuffer, int tbuf_linesize,
                                int width, int height)
{
    int y, x;

    prvp -= prv_linesize;
    nxtp -= nxt_linesize;
    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++)
            tbuffer[x] = FFABS(prvp[x] - nxtp[x]);
        prvp += prv_linesize;
        nxtp += nxt_linesize;
        tbuffer += tbuf_linesize;
    }
}
