
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_11__ {void* culling; } ;
struct TYPE_12__ {TYPE_1__ gen; } ;
typedef TYPE_2__ pvr_sprite_cxt_t ;
struct TYPE_13__ {int argb; } ;


 int DM_320x240 ;
 int PM_RGB565 ;
 void* PVR_CULLING_NONE ;
 int PVR_FILTER_NONE ;
 int PVR_LIST_OP_POLY ;
 int PVR_LIST_PT_POLY ;
 int PVR_LIST_TR_POLY ;
 int PVR_PACK_COLOR (float,float,float,float) ;
 int PVR_TXRFMT_ARGB1555 ;
 int PVR_TXRFMT_NONTWIDDLED ;
 scalar_t__ cur_addr ;
 int fprintf (int ,char*) ;
 scalar_t__ framecount ;
 int lastup ;
 TYPE_3__ op_poly_hdr ;
 int printf (char*,int ) ;
 float* priority_levels ;
 TYPE_3__ pt_sprite_hdr ;
 scalar_t__ pvr_init (int *) ;
 int pvr_mem_available () ;
 void* pvr_mem_malloc (int) ;
 int pvr_params ;
 int pvr_set_vertbuf (int ,int ,int) ;
 int pvr_sprite_compile (TYPE_3__*,TYPE_2__*) ;
 int pvr_sprite_cxt_col (TYPE_2__*,int ) ;
 int pvr_sprite_cxt_txr (TYPE_2__*,int ,int,int,int,void*,int ) ;
 int sq_set (void*,int,int) ;
 int stderr ;
 void* tex_space ;
 int time (int *) ;
 TYPE_3__ tr_poly_hdr ;
 TYPE_3__ tr_sprite_hdr ;
 int vbuf_opaque ;
 int vbuf_punchthru ;
 int vbuf_translucent ;
 void* vdp2_tex ;
 int vid_set_mode (int ,int ) ;

__attribute__((used)) static int VIDDCInit(void) {
    pvr_sprite_cxt_t op_poly_cxt, tr_poly_cxt;
    pvr_sprite_cxt_t pt_sprite_cxt, tr_sprite_cxt;

    vid_set_mode(DM_320x240, PM_RGB565);

    if(pvr_init(&pvr_params)) {
        fprintf(stderr, "VIDDCInit() - error initializing PVR\n");
        return -1;
    }

    pvr_set_vertbuf(PVR_LIST_OP_POLY, vbuf_opaque, 1024 * 256);
    pvr_set_vertbuf(PVR_LIST_TR_POLY, vbuf_translucent, 1024 * 256);
    pvr_set_vertbuf(PVR_LIST_PT_POLY, vbuf_punchthru, 1024 * 256);

    tex_space = pvr_mem_malloc(1024 * 1024 * 2);
    vdp2_tex = pvr_mem_malloc(512 * 256 * 4 * 2);
    cur_addr = (uint32)tex_space;

    printf("PVR Memory Available: %lu\n", pvr_mem_available());

    sq_set(tex_space, 0xFF, 1024 * 1024 * 2);

    pvr_sprite_cxt_col(&op_poly_cxt, PVR_LIST_OP_POLY);
    pvr_sprite_cxt_col(&tr_poly_cxt, PVR_LIST_TR_POLY);

    op_poly_cxt.gen.culling = PVR_CULLING_NONE;
    tr_poly_cxt.gen.culling = PVR_CULLING_NONE;

    pvr_sprite_compile(&op_poly_hdr, &op_poly_cxt);
    pvr_sprite_compile(&tr_poly_hdr, &tr_poly_cxt);

    pvr_sprite_cxt_txr(&tr_sprite_cxt, PVR_LIST_TR_POLY, PVR_TXRFMT_ARGB1555 |
                       PVR_TXRFMT_NONTWIDDLED, 1024, 1024, tex_space,
                       PVR_FILTER_NONE);
    pvr_sprite_cxt_txr(&pt_sprite_cxt, PVR_LIST_PT_POLY, PVR_TXRFMT_ARGB1555 |
                       PVR_TXRFMT_NONTWIDDLED, 1024, 1024, tex_space,
                       PVR_FILTER_NONE);

    pt_sprite_cxt.gen.culling = PVR_CULLING_NONE;
    tr_sprite_cxt.gen.culling = PVR_CULLING_NONE;

    pvr_sprite_compile(&tr_sprite_hdr, &tr_sprite_cxt);
    pvr_sprite_compile(&pt_sprite_hdr, &pt_sprite_cxt);

    tr_sprite_hdr.argb = PVR_PACK_COLOR(0.5f, 1.0f, 1.0f, 1.0f);

    priority_levels[0] = 0.0f;
    priority_levels[1] = 1.0f;
    priority_levels[2] = 2.0f;
    priority_levels[3] = 3.0f;
    priority_levels[4] = 4.0f;
    priority_levels[5] = 5.0f;
    priority_levels[6] = 6.0f;
    priority_levels[7] = 7.0f;

    framecount = 0;
    lastup = time(((void*)0));

    return 0;
}
