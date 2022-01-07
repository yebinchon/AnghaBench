
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_10__ {int** data; int* linesize; int width; int height; } ;
struct TYPE_9__ {int cthresh; int** cmask_data; int* cmask_linesize; int blockx; int blocky; int* c_array; int vsub; int hsub; scalar_t__ chroma; } ;
typedef TYPE_1__ FieldMatchContext ;
typedef TYPE_2__ AVFrame ;


 int AV_CEIL_RSHIFT (int,int ) ;
 int C_ARRAY_ADD (int) ;
 scalar_t__ FILTER (int,int,int,int) ;
 scalar_t__ HAS_FF_AROUND (int*,int const) ;
 int VERTICAL_HALF (int,int const) ;
 int abs (int const) ;
 int fill_buf (int*,int const,int const,int const,int) ;
 int get_height (TYPE_1__ const*,TYPE_2__ const*,int) ;
 int get_width (TYPE_1__ const*,TYPE_2__ const*,int) ;
 int memset (int*,int ,int const) ;

__attribute__((used)) static int calc_combed_score(const FieldMatchContext *fm, const AVFrame *src)
{
    int x, y, plane, max_v = 0;
    const int cthresh = fm->cthresh;
    const int cthresh6 = cthresh * 6;

    for (plane = 0; plane < (fm->chroma ? 3 : 1); plane++) {
        const uint8_t *srcp = src->data[plane];
        const int src_linesize = src->linesize[plane];
        const int width = get_width (fm, src, plane);
        const int height = get_height(fm, src, plane);
        uint8_t *cmkp = fm->cmask_data[plane];
        const int cmk_linesize = fm->cmask_linesize[plane];

        if (cthresh < 0) {
            fill_buf(cmkp, width, height, cmk_linesize, 0xff);
            continue;
        }
        fill_buf(cmkp, width, height, cmk_linesize, 0);
        for (x = 0; x < width; x++) {
            const int s1 = abs(srcp[x] - srcp[x + src_linesize]);
            if (s1 > cthresh && abs( 4 * srcp[x] -3 * (srcp[x + (1)*src_linesize] + srcp[x + (1)*src_linesize]) + (srcp[x + (2)*src_linesize] + srcp[x + (2)*src_linesize])) > cthresh6)
                cmkp[x] = 0xff;
        }
        srcp += src_linesize;
        cmkp += cmk_linesize;


        for (x = 0; x < width; x++) {
            const int s1 = abs(srcp[x] - srcp[x - src_linesize]);
            const int s2 = abs(srcp[x] - srcp[x + src_linesize]);
            if (s1 > cthresh && s2 > cthresh && abs( 4 * srcp[x] -3 * (srcp[x + (-1)*src_linesize] + srcp[x + (1)*src_linesize]) + (srcp[x + (2)*src_linesize] + srcp[x + (2)*src_linesize])) > cthresh6)
                cmkp[x] = 0xff;
        }
        srcp += src_linesize;
        cmkp += cmk_linesize;


        for (y = 2; y < height-2; y++) {
            for (x = 0; x < width; x++) {
                const int s1 = abs(srcp[x] - srcp[x - src_linesize]);
                const int s2 = abs(srcp[x] - srcp[x + src_linesize]);
                if (s1 > cthresh && s2 > cthresh && abs( 4 * srcp[x] -3 * (srcp[x + (-1)*src_linesize] + srcp[x + (1)*src_linesize]) + (srcp[x + (-2)*src_linesize] + srcp[x + (2)*src_linesize])) > cthresh6)
                    cmkp[x] = 0xff;
            }
            srcp += src_linesize;
            cmkp += cmk_linesize;
        }


        for (x = 0; x < width; x++) {
            const int s1 = abs(srcp[x] - srcp[x - src_linesize]);
            const int s2 = abs(srcp[x] - srcp[x + src_linesize]);
            if (s1 > cthresh && s2 > cthresh && abs( 4 * srcp[x] -3 * (srcp[x + (-1)*src_linesize] + srcp[x + (1)*src_linesize]) + (srcp[x + (-2)*src_linesize] + srcp[x + (-2)*src_linesize])) > cthresh6)
                cmkp[x] = 0xff;
        }
        srcp += src_linesize;
        cmkp += cmk_linesize;


        for (x = 0; x < width; x++) {
            const int s1 = abs(srcp[x] - srcp[x - src_linesize]);
            if (s1 > cthresh && abs( 4 * srcp[x] -3 * (srcp[x + (-1)*src_linesize] + srcp[x + (-1)*src_linesize]) + (srcp[x + (-2)*src_linesize] + srcp[x + (-2)*src_linesize])) > cthresh6)
                cmkp[x] = 0xff;
        }
    }

    if (fm->chroma) {
        uint8_t *cmkp = fm->cmask_data[0];
        uint8_t *cmkpU = fm->cmask_data[1];
        uint8_t *cmkpV = fm->cmask_data[2];
        const int width = AV_CEIL_RSHIFT(src->width, fm->hsub);
        const int height = AV_CEIL_RSHIFT(src->height, fm->vsub);
        const int cmk_linesize = fm->cmask_linesize[0] << 1;
        const int cmk_linesizeUV = fm->cmask_linesize[2];
        uint8_t *cmkpp = cmkp - (cmk_linesize>>1);
        uint8_t *cmkpn = cmkp + (cmk_linesize>>1);
        uint8_t *cmkpnn = cmkp + cmk_linesize;
        for (y = 1; y < height - 1; y++) {
            cmkpp += cmk_linesize;
            cmkp += cmk_linesize;
            cmkpn += cmk_linesize;
            cmkpnn += cmk_linesize;
            cmkpV += cmk_linesizeUV;
            cmkpU += cmk_linesizeUV;
            for (x = 1; x < width - 1; x++) {



                if ((cmkpV[x] == 0xff && (cmkpV[(x)-1 - (cmk_linesizeUV)] == 0xff || cmkpV[(x) - (cmk_linesizeUV)] == 0xff || cmkpV[(x)+1 - (cmk_linesizeUV)] == 0xff || cmkpV[(x)-1 ] == 0xff || cmkpV[(x)+1 ] == 0xff || cmkpV[(x)-1 + (cmk_linesizeUV)] == 0xff || cmkpV[(x) + (cmk_linesizeUV)] == 0xff || cmkpV[(x)+1 + (cmk_linesizeUV)] == 0xff)) ||
                    (cmkpU[x] == 0xff && (cmkpU[(x)-1 - (cmk_linesizeUV)] == 0xff || cmkpU[(x) - (cmk_linesizeUV)] == 0xff || cmkpU[(x)+1 - (cmk_linesizeUV)] == 0xff || cmkpU[(x)-1 ] == 0xff || cmkpU[(x)+1 ] == 0xff || cmkpU[(x)-1 + (cmk_linesizeUV)] == 0xff || cmkpU[(x) + (cmk_linesizeUV)] == 0xff || cmkpU[(x)+1 + (cmk_linesizeUV)] == 0xff))) {
                    ((uint16_t*)cmkp)[x] = 0xffff;
                    ((uint16_t*)cmkpn)[x] = 0xffff;
                    if (y&1) ((uint16_t*)cmkpp)[x] = 0xffff;
                    else ((uint16_t*)cmkpnn)[x] = 0xffff;
                }
            }
        }
    }

    {
        const int blockx = fm->blockx;
        const int blocky = fm->blocky;
        const int xhalf = blockx/2;
        const int yhalf = blocky/2;
        const int cmk_linesize = fm->cmask_linesize[0];
        const uint8_t *cmkp = fm->cmask_data[0] + cmk_linesize;
        const int width = src->width;
        const int height = src->height;
        const int xblocks = ((width+xhalf)/blockx) + 1;
        const int xblocks4 = xblocks<<2;
        const int yblocks = ((height+yhalf)/blocky) + 1;
        int *c_array = fm->c_array;
        const int arraysize = (xblocks*yblocks)<<2;
        int heighta = (height/(blocky/2))*(blocky/2);
        const int widtha = (width /(blockx/2))*(blockx/2);
        if (heighta == height)
            heighta = height - yhalf;
        memset(c_array, 0, arraysize * sizeof(*c_array));
        do { for (y = 1; y < yhalf; y++) { const int temp1 = (y / blocky) * xblocks4; const int temp2 = ((y + yhalf) / blocky) * xblocks4; for (x = 0; x < width; x++) if (cmkp[x - cmk_linesize] == 0xff && cmkp[x ] == 0xff && cmkp[x + cmk_linesize] == 0xff) do { const int box1 = (x / blockx) * 4; const int box2 = ((x + xhalf) / blockx) * 4; c_array[temp1 + box1 ] += 1; c_array[temp1 + box2 + 1] += 1; c_array[temp2 + box1 + 2] += 1; c_array[temp2 + box2 + 3] += 1; } while (0); cmkp += cmk_linesize; } } while (0);

        for (y = yhalf; y < heighta; y += yhalf) {
            const int temp1 = (y / blocky) * xblocks4;
            const int temp2 = ((y + yhalf) / blocky) * xblocks4;

            for (x = 0; x < widtha; x += xhalf) {
                const uint8_t *cmkp_tmp = cmkp + x;
                int u, v, sum = 0;
                for (u = 0; u < yhalf; u++) {
                    for (v = 0; v < xhalf; v++)
                        if (cmkp_tmp[v - cmk_linesize] == 0xff &&
                            cmkp_tmp[v ] == 0xff &&
                            cmkp_tmp[v + cmk_linesize] == 0xff)
                            sum++;
                    cmkp_tmp += cmk_linesize;
                }
                if (sum)
                    do { const int box1 = (x / blockx) * 4; const int box2 = ((x + xhalf) / blockx) * 4; c_array[temp1 + box1 ] += sum; c_array[temp1 + box2 + 1] += sum; c_array[temp2 + box1 + 2] += sum; c_array[temp2 + box2 + 3] += sum; } while (0);
            }

            for (x = widtha; x < width; x++) {
                const uint8_t *cmkp_tmp = cmkp + x;
                int u, sum = 0;
                for (u = 0; u < yhalf; u++) {
                    if (cmkp_tmp[-cmk_linesize] == 0xff &&
                        cmkp_tmp[ 0] == 0xff &&
                        cmkp_tmp[ cmk_linesize] == 0xff)
                        sum++;
                    cmkp_tmp += cmk_linesize;
                }
                if (sum)
                    do { const int box1 = (x / blockx) * 4; const int box2 = ((x + xhalf) / blockx) * 4; c_array[temp1 + box1 ] += sum; c_array[temp1 + box2 + 1] += sum; c_array[temp2 + box1 + 2] += sum; c_array[temp2 + box2 + 3] += sum; } while (0);
            }

            cmkp += cmk_linesize * yhalf;
        }

        do { for (y = heighta; y < height - 1; y++) { const int temp1 = (y / blocky) * xblocks4; const int temp2 = ((y + yhalf) / blocky) * xblocks4; for (x = 0; x < width; x++) if (cmkp[x - cmk_linesize] == 0xff && cmkp[x ] == 0xff && cmkp[x + cmk_linesize] == 0xff) do { const int box1 = (x / blockx) * 4; const int box2 = ((x + xhalf) / blockx) * 4; c_array[temp1 + box1 ] += 1; c_array[temp1 + box2 + 1] += 1; c_array[temp2 + box1 + 2] += 1; c_array[temp2 + box2 + 3] += 1; } while (0); cmkp += cmk_linesize; } } while (0);

        for (x = 0; x < arraysize; x++)
            if (c_array[x] > max_v)
                max_v = c_array[x];
    }
    return max_v;
}
