
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
typedef int pvr_sprite_hdr_t ;
struct TYPE_5__ {float ax; int ay; float az; float bx; int by; float bz; int cy; float cz; int dy; scalar_t__ d4; scalar_t__ d3; scalar_t__ d2; scalar_t__ d1; void* dx; void* cx; void* flags; void* argb; } ;
typedef TYPE_1__ pvr_sprite_col_t ;
struct TYPE_6__ {int VRSIZE; int BKTAU; int BKTAL; } ;


 void* PVR_CMD_VERTEX_EOL ;
 int PVR_LIST_OP_POLY ;
 void* SAT2YAB32 (int,int ) ;
 int T1ReadWord (int ,int) ;
 int Vdp2Ram ;
 TYPE_4__* Vdp2Regs ;
 TYPE_1__ op_poly_hdr ;
 int pvr_list_prim (int ,TYPE_1__*,int) ;
 int vdp2height ;
 void* vdp2width ;

__attribute__((used)) static void Vdp2DrawBackScreen() {
    u32 scrAddr;
    u16 dot;
    pvr_sprite_col_t spr;

    if(Vdp2Regs->VRSIZE & 0x8000)
        scrAddr = (((Vdp2Regs->BKTAU & 0x07) << 16) | Vdp2Regs->BKTAL) << 1;
    else
        scrAddr = (((Vdp2Regs->BKTAU & 0x03) << 16) | Vdp2Regs->BKTAL) << 1;

    if(Vdp2Regs->BKTAU & 0x8000) {
        int i;

        for(i = 0; i < vdp2height; ++i) {
            dot = T1ReadWord(Vdp2Ram, scrAddr);
            scrAddr += 2;

            op_poly_hdr.argb = SAT2YAB32(0xFF, dot);
            pvr_list_prim(PVR_LIST_OP_POLY, &op_poly_hdr,
                          sizeof(pvr_sprite_hdr_t));

            spr.flags = PVR_CMD_VERTEX_EOL;
            spr.ax = 0.0f;
            spr.ay = i + 1;
            spr.az = 0.1f;
            spr.bx = 0.0f;
            spr.by = i;
            spr.bz = 0.1f;
            spr.cx = vdp2width;
            spr.cy = i;
            spr.cz = 0.1f;
            spr.dx = vdp2width;
            spr.dy = i + 1;
            spr.d1 = spr.d2 = spr.d3 = spr.d4 = 0;
            pvr_list_prim(PVR_LIST_OP_POLY, &spr, sizeof(pvr_sprite_col_t));
        }
    }
    else {
        dot = T1ReadWord(Vdp2Ram, scrAddr);

        op_poly_hdr.argb = SAT2YAB32(0xFF, dot);
        pvr_list_prim(PVR_LIST_OP_POLY, &op_poly_hdr, sizeof(pvr_sprite_hdr_t));

        spr.flags = PVR_CMD_VERTEX_EOL;
        spr.ax = 0.0f;
        spr.ay = vdp2height;
        spr.az = 0.1f;
        spr.bx = 0.0f;
        spr.by = 0.0f;
        spr.bz = 0.1f;
        spr.cx = vdp2width;
        spr.cy = 0.0f;
        spr.cz = 0.1f;
        spr.dx = vdp2width;
        spr.dy = vdp2height;
        spr.d1 = spr.d2 = spr.d3 = spr.d4 = 0;
        pvr_list_prim(PVR_LIST_OP_POLY, &spr, sizeof(pvr_sprite_col_t));
    }
}
