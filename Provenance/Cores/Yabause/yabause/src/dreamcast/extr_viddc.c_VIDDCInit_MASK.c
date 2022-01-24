#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_11__ {void* culling; } ;
struct TYPE_12__ {TYPE_1__ gen; } ;
typedef  TYPE_2__ pvr_sprite_cxt_t ;
struct TYPE_13__ {int /*<<< orphan*/  argb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_320x240 ; 
 int /*<<< orphan*/  PM_RGB565 ; 
 void* PVR_CULLING_NONE ; 
 int /*<<< orphan*/  PVR_FILTER_NONE ; 
 int /*<<< orphan*/  PVR_LIST_OP_POLY ; 
 int /*<<< orphan*/  PVR_LIST_PT_POLY ; 
 int /*<<< orphan*/  PVR_LIST_TR_POLY ; 
 int /*<<< orphan*/  FUNC0 (float,float,float,float) ; 
 int PVR_TXRFMT_ARGB1555 ; 
 int PVR_TXRFMT_NONTWIDDLED ; 
 scalar_t__ cur_addr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ framecount ; 
 int /*<<< orphan*/  lastup ; 
 TYPE_3__ op_poly_hdr ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 float* priority_levels ; 
 TYPE_3__ pt_sprite_hdr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  pvr_params ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 void* tex_space ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_3__ tr_poly_hdr ; 
 TYPE_3__ tr_sprite_hdr ; 
 int /*<<< orphan*/  vbuf_opaque ; 
 int /*<<< orphan*/  vbuf_punchthru ; 
 int /*<<< orphan*/  vbuf_translucent ; 
 void* vdp2_tex ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(void)  {
    pvr_sprite_cxt_t op_poly_cxt, tr_poly_cxt;
    pvr_sprite_cxt_t pt_sprite_cxt, tr_sprite_cxt;

    FUNC12(DM_320x240, PM_RGB565);

    if(FUNC3(&pvr_params))   {
        FUNC1(stderr, "VIDDCInit() - error initializing PVR\n");
        return -1;
    }

    FUNC6(PVR_LIST_OP_POLY, vbuf_opaque, 1024 * 256);
    FUNC6(PVR_LIST_TR_POLY, vbuf_translucent, 1024 * 256);
    FUNC6(PVR_LIST_PT_POLY, vbuf_punchthru, 1024 * 256);

    tex_space = FUNC5(1024 * 1024 * 2);
    vdp2_tex = FUNC5(512 * 256 * 4 * 2);
    cur_addr = (uint32)tex_space;

    FUNC2("PVR Memory Available: %lu\n", FUNC4());

    FUNC10(tex_space, 0xFF, 1024 * 1024 * 2);

    FUNC8(&op_poly_cxt, PVR_LIST_OP_POLY);
    FUNC8(&tr_poly_cxt, PVR_LIST_TR_POLY);

    op_poly_cxt.gen.culling = PVR_CULLING_NONE;
    tr_poly_cxt.gen.culling = PVR_CULLING_NONE;

    FUNC7(&op_poly_hdr, &op_poly_cxt);
    FUNC7(&tr_poly_hdr, &tr_poly_cxt);

    FUNC9(&tr_sprite_cxt, PVR_LIST_TR_POLY, PVR_TXRFMT_ARGB1555 |
                       PVR_TXRFMT_NONTWIDDLED, 1024, 1024, tex_space,
                       PVR_FILTER_NONE);
    FUNC9(&pt_sprite_cxt, PVR_LIST_PT_POLY, PVR_TXRFMT_ARGB1555 |
                       PVR_TXRFMT_NONTWIDDLED, 1024, 1024, tex_space,
                       PVR_FILTER_NONE);

    pt_sprite_cxt.gen.culling = PVR_CULLING_NONE;
    tr_sprite_cxt.gen.culling = PVR_CULLING_NONE;

    FUNC7(&tr_sprite_hdr, &tr_sprite_cxt);
    FUNC7(&pt_sprite_hdr, &pt_sprite_cxt);

    tr_sprite_hdr.argb = FUNC0(0.5f, 1.0f, 1.0f, 1.0f);

    priority_levels[0] = 0.0f;
    priority_levels[1] = 1.0f;
    priority_levels[2] = 2.0f;
    priority_levels[3] = 3.0f;
    priority_levels[4] = 4.0f;
    priority_levels[5] = 5.0f;
    priority_levels[6] = 6.0f;
    priority_levels[7] = 7.0f;

    framecount = 0;
    lastup = FUNC11(NULL);

    return 0;
}