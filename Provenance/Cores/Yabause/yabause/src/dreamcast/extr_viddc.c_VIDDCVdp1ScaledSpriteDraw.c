
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int CMDXA; int CMDYA; int CMDSIZE; int CMDPMOD; int CMDCTRL; int CMDXC; int CMDYC; int CMDXB; int CMDYB; } ;
typedef TYPE_1__ vdp1cmd_struct ;
typedef size_t u8 ;
typedef int sprite ;
typedef int s16 ;
struct TYPE_13__ {int ax; int ay; float az; int bx; int by; float bz; int cx; int cy; float cz; int dx; int dy; void* cuv; void* buv; void* auv; int flags; } ;
typedef TYPE_2__ pvr_sprite_txr_t ;
typedef int pvr_sprite_hdr_t ;
typedef int pvr_list_t ;
struct TYPE_15__ {int localX; int localY; int addr; } ;
struct TYPE_14__ {int w; int h; float uf; float vf; } ;


 int PVR_CMD_VERTEX_EOL ;
 int PVR_LIST_PT_POLY ;
 int PVR_LIST_TR_POLY ;
 void* PVR_PACK_16BIT_UV (float,float) ;
 int Vdp1ReadCommand (TYPE_1__*,int ) ;
 size_t Vdp1ReadPriority (TYPE_1__*) ;
 int Vdp1ReadTexture (TYPE_1__*,TYPE_2__*) ;
 TYPE_7__* Vdp1Regs ;
 TYPE_6__ cur_spr ;
 float* priority_levels ;
 TYPE_2__ pt_sprite_hdr ;
 int pvr_list_prim (int ,TYPE_2__*,int) ;
 TYPE_2__ tr_sprite_hdr ;

__attribute__((used)) static void VIDDCVdp1ScaledSpriteDraw(void) {
    vdp1cmd_struct cmd;
    s16 rw = 0, rh = 0;
    s16 x, y;
    u8 z;
    pvr_sprite_txr_t sprite;
    pvr_list_t list;
    int num;

    Vdp1ReadCommand(&cmd, Vdp1Regs->addr);

    x = cmd.CMDXA + Vdp1Regs->localX;
    y = cmd.CMDYA + Vdp1Regs->localY;
    cur_spr.w = ((cmd.CMDSIZE >> 8) & 0x3F) * 8;
    cur_spr.h = cmd.CMDSIZE & 0xFF;

    if((cmd.CMDPMOD & 0x07) == 0x03) {
        list = PVR_LIST_TR_POLY;
        num = Vdp1ReadTexture(&cmd, &tr_sprite_hdr);

        if(num == 0)
            return;
        else
            pvr_list_prim(PVR_LIST_TR_POLY, &tr_sprite_hdr,
                          sizeof(pvr_sprite_hdr_t));
    }
    else {
        num = Vdp1ReadTexture(&cmd, &pt_sprite_hdr);
        list = PVR_LIST_PT_POLY;

        if(num == 0)
            return;
        else
            pvr_list_prim(PVR_LIST_PT_POLY, &pt_sprite_hdr,
                          sizeof(pvr_sprite_hdr_t));
    }


    switch ((cmd.CMDCTRL & 0xF00) >> 8) {
        case 0x0:
            rw = cmd.CMDXC - x + Vdp1Regs->localX + 1;
            rh = cmd.CMDYC - y + Vdp1Regs->localY + 1;
            break;
        case 0x5:
            rw = cmd.CMDXB + 1;
            rh = cmd.CMDYB + 1;
            break;
        case 0x6:
            rw = cmd.CMDXB;
            rh = cmd.CMDYB;
            x = x - rw / 2;
            ++rw;
            ++rh;
            break;
        case 0x7:
            rw = cmd.CMDXB;
            rh = cmd.CMDYB;
            x = x - rw;
            ++rw;
            ++rh;
            break;
        case 0x9:
            rw = cmd.CMDXB;
            rh = cmd.CMDYB;
            y = y - rh / 2;
            ++rw;
            ++rh;
            break;
        case 0xA:
            rw = cmd.CMDXB;
            rh = cmd.CMDYB;
            x = x - rw / 2;
            y = y - rh / 2;
            ++rw;
            ++rh;
            break;
        case 0xB:
            rw = cmd.CMDXB;
            rh = cmd.CMDYB;
            x = x - rw;
            y = y - rh / 2;
            ++rw;
            ++rh;
            break;
        case 0xD:
            rw = cmd.CMDXB;
            rh = cmd.CMDYB;
            y = y - rh;
            ++rw;
            ++rh;
            break;
        case 0xE:
            rw = cmd.CMDXB;
            rh = cmd.CMDYB;
            x = x - rw / 2;
            y = y - rh;
            ++rw;
            ++rh;
            break;
        case 0xF:
            rw = cmd.CMDXB;
            rh = cmd.CMDYB;
            x = x - rw;
            y = y - rh;
            ++rw;
            ++rh;
            break;
        default:
            break;
    }

    z = Vdp1ReadPriority(&cmd);

    sprite.flags = PVR_CMD_VERTEX_EOL;
    sprite.ax = x;
    sprite.ay = y;
    sprite.az = priority_levels[z];

    sprite.bx = x + rw;
    sprite.by = y;
    sprite.bz = priority_levels[z];

    sprite.cx = x + rw;
    sprite.cy = y + rh;
    sprite.cz = priority_levels[z];

    sprite.dx = x;
    sprite.dy = y + rh;

    sprite.auv = PVR_PACK_16BIT_UV(((cmd.CMDCTRL & 0x0010) ? cur_spr.uf : 0.0f),
                                  ((cmd.CMDCTRL & 0x0020) ? cur_spr.vf : 0.0f));
    sprite.buv = PVR_PACK_16BIT_UV(((cmd.CMDCTRL & 0x0010) ? 0.0f : cur_spr.uf),
                                  ((cmd.CMDCTRL & 0x0020) ? cur_spr.vf : 0.0f));
    sprite.cuv = PVR_PACK_16BIT_UV(((cmd.CMDCTRL & 0x0010) ? 0.0f : cur_spr.uf),
                                  ((cmd.CMDCTRL & 0x0020) ? 0.0f : cur_spr.vf));
    pvr_list_prim(list, &sprite, sizeof(sprite));

    priority_levels[z] += 0.000001f;
}
