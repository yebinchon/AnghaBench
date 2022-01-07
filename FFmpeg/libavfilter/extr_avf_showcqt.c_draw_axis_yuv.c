
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int format; int width; int height; int* linesize; int ** data; } ;
typedef int ColorFloat ;
typedef TYPE_1__ AVFrame ;


 int AV_PIX_FMT_YUV420P ;
 int AV_PIX_FMT_YUV422P ;
 int AV_PIX_FMT_YUV444P ;
 int BLEND_CHROMA2 (int const) ;
 int BLEND_CHROMA2x2 (int const) ;
 int BLEND_WITHOUT_CHROMA (int const,int) ;
 int BLEND_WITH_CHROMA (int const) ;

__attribute__((used)) static void draw_axis_yuv(AVFrame *out, AVFrame *axis, const ColorFloat *c, int off)
{
    int fmt = out->format, x, y, yh, w = axis->width, h = axis->height;
    int offh = (fmt == AV_PIX_FMT_YUV420P) ? off / 2 : off;
    uint8_t *vy = out->data[0], *vu = out->data[1], *vv = out->data[2];
    uint8_t *vay = axis->data[0], *vau = axis->data[1], *vav = axis->data[2], *vaa = axis->data[3];
    int lsy = out->linesize[0], lsu = out->linesize[1], lsv = out->linesize[2];
    int lsay = axis->linesize[0], lsau = axis->linesize[1], lsav = axis->linesize[2], lsaa = axis->linesize[3];
    uint8_t *lpy, *lpu, *lpv, *lpay, *lpau, *lpav, *lpaa;

    for (y = 0; y < h; y += 2) {
        yh = (fmt == AV_PIX_FMT_YUV420P) ? y / 2 : y;
        lpy = vy + (off + y) * lsy;
        lpu = vu + (offh + yh) * lsu;
        lpv = vv + (offh + yh) * lsv;
        lpay = vay + y * lsay;
        lpau = vau + y * lsau;
        lpav = vav + y * lsav;
        lpaa = vaa + y * lsaa;
        if (fmt == AV_PIX_FMT_YUV444P) {
            for (x = 0; x < w; x += 2) {
                BLEND_WITH_CHROMA(c[x]);
                BLEND_WITH_CHROMA(c[x+1]);
            }
        } else if (fmt == AV_PIX_FMT_YUV422P) {
            for (x = 0; x < w; x += 2) {
                BLEND_WITHOUT_CHROMA(c[x], 0);
                BLEND_CHROMA2(c[x]);
                BLEND_WITHOUT_CHROMA(c[x+1], 1);
            }
        } else {
            for (x = 0; x < w; x += 2) {
                BLEND_WITHOUT_CHROMA(c[x], 0);
                BLEND_CHROMA2x2(c[x]);
                BLEND_WITHOUT_CHROMA(c[x+1], 1);
            }
        }

        lpy = vy + (off + y + 1) * lsy;
        lpu = vu + (off + y + 1) * lsu;
        lpv = vv + (off + y + 1) * lsv;
        lpay = vay + (y + 1) * lsay;
        lpau = vau + (y + 1) * lsau;
        lpav = vav + (y + 1) * lsav;
        lpaa = vaa + (y + 1) * lsaa;
        if (fmt == AV_PIX_FMT_YUV444P) {
            for (x = 0; x < w; x += 2) {
                BLEND_WITH_CHROMA(c[x]);
                BLEND_WITH_CHROMA(c[x+1]);
            }
        } else if (fmt == AV_PIX_FMT_YUV422P) {
            for (x = 0; x < w; x += 2) {
                BLEND_WITHOUT_CHROMA(c[x], 0);
                BLEND_CHROMA2(c[x]);
                BLEND_WITHOUT_CHROMA(c[x+1], 1);
            }
        } else {
            for (x = 0; x < w; x += 2) {
                BLEND_WITHOUT_CHROMA(c[x], 1);
                BLEND_WITHOUT_CHROMA(c[x+1], 1);
            }
        }
    }
}
