
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int (* op_pixels_func ) (int *,int *,int,int) ;
struct TYPE_6__ {int * edge_emu_buffer; } ;
struct TYPE_5__ {int (* emulated_edge_mc ) (int *,int *,int,int,int,int,int,int,int,int) ;} ;
struct TYPE_7__ {int mb_x; int mb_y; int width; int height; int uvlinesize; int h_edge_pos; int v_edge_pos; TYPE_2__ sc; TYPE_1__ vdsp; } ;
typedef TYPE_3__ MpegEncContext ;


 unsigned int FFMAX (int,int ) ;
 int av_clip (int,int,int) ;
 int ff_h263_round_chroma (int) ;
 int stub1 (int *,int *,int,int,int,int,int,int,int,int) ;
 int stub2 (int *,int *,int,int) ;
 int stub3 (int *,int *,int,int,int,int,int,int,int,int) ;
 int stub4 (int *,int *,int,int) ;

__attribute__((used)) static void chroma_4mv_motion(MpegEncContext *s,
                              uint8_t *dest_cb, uint8_t *dest_cr,
                              uint8_t **ref_picture,
                              op_pixels_func *pix_op,
                              int mx, int my)
{
    uint8_t *ptr;
    int src_x, src_y, dxy, emu = 0;
    ptrdiff_t offset;



    mx = ff_h263_round_chroma(mx);
    my = ff_h263_round_chroma(my);

    dxy = ((my & 1) << 1) | (mx & 1);
    mx >>= 1;
    my >>= 1;

    src_x = s->mb_x * 8 + mx;
    src_y = s->mb_y * 8 + my;
    src_x = av_clip(src_x, -8, (s->width >> 1));
    if (src_x == (s->width >> 1))
        dxy &= ~1;
    src_y = av_clip(src_y, -8, (s->height >> 1));
    if (src_y == (s->height >> 1))
        dxy &= ~2;

    offset = src_y * s->uvlinesize + src_x;
    ptr = ref_picture[1] + offset;
    if ((unsigned)src_x >= FFMAX((s->h_edge_pos >> 1) - (dxy & 1) - 7, 0) ||
        (unsigned)src_y >= FFMAX((s->v_edge_pos >> 1) - (dxy >> 1) - 7, 0)) {
        s->vdsp.emulated_edge_mc(s->sc.edge_emu_buffer, ptr,
                                 s->uvlinesize, s->uvlinesize,
                                 9, 9, src_x, src_y,
                                 s->h_edge_pos >> 1, s->v_edge_pos >> 1);
        ptr = s->sc.edge_emu_buffer;
        emu = 1;
    }
    pix_op[dxy](dest_cb, ptr, s->uvlinesize, 8);

    ptr = ref_picture[2] + offset;
    if (emu) {
        s->vdsp.emulated_edge_mc(s->sc.edge_emu_buffer, ptr,
                                 s->uvlinesize, s->uvlinesize,
                                 9, 9, src_x, src_y,
                                 s->h_edge_pos >> 1, s->v_edge_pos >> 1);
        ptr = s->sc.edge_emu_buffer;
    }
    pix_op[dxy](dest_cr, ptr, s->uvlinesize, 8);
}
