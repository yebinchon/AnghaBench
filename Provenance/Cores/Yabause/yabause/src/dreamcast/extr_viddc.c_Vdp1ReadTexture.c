
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int CMDSRCA; int CMDPMOD; scalar_t__ CMDCOLR; } ;
typedef TYPE_1__ vdp1cmd_struct ;
typedef int uint32 ;
typedef int uint16 ;
typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_9__ {int mode2; int mode3; } ;
typedef TYPE_2__ pvr_sprite_hdr_t ;
struct TYPE_12__ {int CRAOFB; } ;
struct TYPE_11__ {scalar_t__ vdp1_base; scalar_t__ w; scalar_t__ h; int pvr_base; } ;
struct TYPE_10__ {scalar_t__ w; scalar_t__ h; float uf; float vf; } ;


 int COLOR_ADD (int,int ,int ,int ) ;
 int PVR_TA_PM2_USIZE_MASK ;
 int PVR_TA_PM2_USIZE_SHIFT ;
 int PVR_TA_PM2_VSIZE_MASK ;
 int PVR_TA_PM2_VSIZE_SHIFT ;
 int PVR_TXRFMT_NONTWIDDLED ;
 int QACR0 ;
 int QACR1 ;
 int SAT2YAB1 (int) ;
 int T1ReadByte (int ,scalar_t__) ;
 int T1ReadWord (int ,scalar_t__) ;
 int VDP1LOG (char*,int) ;
 int Vdp1Ram ;
 int Vdp2ColorRamGetColor (int) ;
 TYPE_5__* Vdp2Regs ;
 int assert_msg (int ,char*) ;
 TYPE_4__* cache ;
 int cached_spr ;
 int cur_addr ;
 TYPE_3__ cur_spr ;
 int power_of_two (scalar_t__) ;
 int vdp1cob ;
 int vdp1cog ;
 int vdp1cor ;

__attribute__((used)) static int Vdp1ReadTexture(vdp1cmd_struct *cmd, pvr_sprite_hdr_t *hdr) {
    u32 charAddr = cmd->CMDSRCA << 3;
    uint16 dot, dot2;
    int queuepos = 0;
    uint32 *store_queue;
    uint32 cur_base;
    u8 SPD = ((cmd->CMDPMOD & 0x40) != 0);
    int k;

    int wi = power_of_two(cur_spr.w);
    int he = power_of_two(cur_spr.h);

    for(k = 0; k < cached_spr; ++k) {
        if(cache[k].vdp1_base == charAddr) {
            if(cache[k].w == cur_spr.w && cache[k].h == cur_spr.h) {
                cur_base = cache[k].pvr_base;
                goto fillHeader;
            }
        }
    }

    cur_base = cur_addr;


    QACR0 = 0x00000004;
    QACR1 = 0x00000004;

    switch((cmd->CMDPMOD >> 3) & 0x07) {
        case 0:
        {

            u16 temp;
            u32 colorBank = cmd->CMDCOLR;
            u32 colorOffset = (Vdp2Regs->CRAOFB & 0x70) << 4;
            int i, j;

            for(i = 0; i < cur_spr.h; ++i) {
                store_queue = (uint32 *) (0xE0000000 |
                                          (cur_addr & 0x03FFFFE0));

                for(j = 0; j < cur_spr.w; j += 2) {
                    dot = T1ReadByte(Vdp1Ram, charAddr & 0x7FFFF);

                    if(((dot & 0xF) == 0) && !SPD) dot2 = 0;
                    else {
                        temp = Vdp2ColorRamGetColor(((dot & 0x0F) | colorBank) +
                                                    colorOffset);
                        dot2 = COLOR_ADD(temp, vdp1cor, vdp1cog, vdp1cob);
                    }

                    if(((dot >> 4) == 0) && !SPD) dot = 0;
                    else {
                        temp = Vdp2ColorRamGetColor(((dot >> 4) | colorBank) +
                                                    colorOffset);
                        dot = COLOR_ADD(temp, vdp1cor, vdp1cog, vdp1cob);
                    }

                    ++charAddr;

                    store_queue[queuepos++] = dot | (dot2 << 16);

                    if(queuepos == 8) {
                        asm("pref @%0" : : "r"(store_queue));
                        queuepos = 0;
                        store_queue += 8;
                    }
                }

                if(queuepos) {
                    asm("pref @%0" : : "r"(store_queue));
                    queuepos = 0;
                }

                cur_addr += wi * 2;
            }
            break;
        }

        case 1:
        {

            u16 temp;
            u32 colorLut = cmd->CMDCOLR * 8;
            int i, j;

            for(i = 0; i < cur_spr.h; ++i) {
                store_queue = (uint32 *) (0xE0000000 |
                                          (cur_addr & 0x03FFFFE0));

                for(j = 0; j < cur_spr.w; j += 2) {
                    dot = T1ReadByte(Vdp1Ram, charAddr & 0x7FFFF);

                    if(((dot & 0xF) == 0) && !SPD) dot2 = 0;
                    else {
                        temp = T1ReadWord(Vdp1Ram, ((dot & 0xF) * 2 +
                                                    colorLut) & 0x7FFFF);

                        if(temp & 0x8000)
                            dot2 = COLOR_ADD(SAT2YAB1(temp), vdp1cor, vdp1cog,
                                             vdp1cob);
                        else
                            dot2 = COLOR_ADD(Vdp2ColorRamGetColor(temp),
                                             vdp1cor, vdp1cog, vdp1cob);
                    }

                    if(((dot >> 4) == 0) && !SPD) dot = 0;
                    else {
                        temp = T1ReadWord(Vdp1Ram, ((dot >> 4) * 2 + colorLut) &
                                          0x7FFFF);
                        if (temp & 0x8000)
                            dot = COLOR_ADD(SAT2YAB1(temp), vdp1cor, vdp1cog,
                                            vdp1cob);
                        else
                            dot = COLOR_ADD(Vdp2ColorRamGetColor(temp), vdp1cor,
                                            vdp1cog, vdp1cob);
                    }

                    ++charAddr;

                    store_queue[queuepos++] = dot | (dot2 << 16);

                    if(queuepos == 8) {
                        asm("pref @%0" : : "r"(store_queue));
                        queuepos = 0;
                        store_queue += 8;
                    }
                }

                if(queuepos) {
                    asm("pref @%0" : : "r"(store_queue));
                    queuepos = 0;
                }

                cur_addr += wi * 2;
            }
            break;
        }

        case 2:
        {

            int i, j;
            u32 colorBank = cmd->CMDCOLR;
            u32 colorOffset = (Vdp2Regs->CRAOFB & 0x70) << 4;
            u16 temp;

            for(i = 0; i < cur_spr.h; ++i) {
                store_queue = (uint32 *) (0xE0000000 |
                                          (cur_addr & 0x03FFFFE0));

                for(j = 0; j < cur_spr.w; j += 2) {
                    dot = T1ReadByte(Vdp1Ram, charAddr & 0x7FFFF) & 0x3F;
                    dot2 = T1ReadByte(Vdp1Ram, (charAddr + 1) & 0x7FFFF) & 0x3F;
                    charAddr = charAddr + 2;

                    if(dot || SPD) {
                        temp = Vdp2ColorRamGetColor((dot | colorBank) +
                                                    colorOffset);
                        dot = COLOR_ADD(temp, vdp1cor, vdp1cog, vdp1cob);
                    }

                    if(dot2 || SPD) {
                        temp = Vdp2ColorRamGetColor((dot2 | colorBank) +
                                                    colorOffset);
                        dot2 = COLOR_ADD(temp, vdp1cor, vdp1cog, vdp1cob);
                    }

                    store_queue[queuepos++] = dot | (dot2 << 16);

                    if(queuepos == 8) {
                        asm("pref @%0" : : "r"(store_queue));
                        queuepos = 0;
                        store_queue += 8;
                    }
                }

                if(queuepos) {
                    asm("pref @%0" : : "r"(store_queue));
                    queuepos = 0;
                }

                cur_addr += wi * 2;
            }
            break;
        }

        case 3:
        {

            int i, j;
            u32 colorBank = cmd->CMDCOLR;
            u32 colorOffset = (Vdp2Regs->CRAOFB & 0x70) << 4;
            u16 temp;

            for(i = 0; i < cur_spr.h; ++i) {
                store_queue = (uint32 *) (0xE0000000 |
                                          (cur_addr & 0x03FFFFE0));

                for(j = 0; j < cur_spr.w; j += 2) {
                    dot = T1ReadByte(Vdp1Ram, charAddr & 0x7FFFF) & 0x7F;
                    dot2 = T1ReadByte(Vdp1Ram, (charAddr + 1) & 0x7FFFF) & 0x7F;
                    charAddr = charAddr + 2;

                    if(dot || SPD) {
                        temp = Vdp2ColorRamGetColor((dot | colorBank) +
                                                    colorOffset);
                        dot = COLOR_ADD(temp, vdp1cor, vdp1cog, vdp1cob);
                    }

                    if(dot2 || SPD) {
                        temp = Vdp2ColorRamGetColor((dot2 | colorBank) +
                                                    colorOffset);
                        dot2 = COLOR_ADD(temp, vdp1cor, vdp1cog, vdp1cob);
                    }

                    store_queue[queuepos++] = dot | (dot2 << 16);

                    if(queuepos == 8) {
                        asm("pref @%0" : : "r"(store_queue));
                        queuepos = 0;
                        store_queue += 8;
                    }
                }

                if(queuepos) {
                    asm("pref @%0" : : "r"(store_queue));
                    queuepos = 0;
                }

                cur_addr += wi * 2;
            }
            break;
        }

        case 4:
        {

            int i, j;
            u32 colorBank = cmd->CMDCOLR;
            u32 colorOffset = (Vdp2Regs->CRAOFB & 0x70) << 4;
            u16 temp;

            for(i = 0; i < cur_spr.h; ++i) {
                store_queue = (uint32 *) (0xE0000000 |
                                          (cur_addr & 0x03FFFFE0));

                for(j = 0; j < cur_spr.w; j += 2) {
                    dot = T1ReadByte(Vdp1Ram, charAddr & 0x7FFFF);
                    dot2 = T1ReadByte(Vdp1Ram, (charAddr + 1) & 0x7FFFF);
                    charAddr = charAddr + 2;

                    if(dot || SPD) {
                        temp = Vdp2ColorRamGetColor((dot | colorBank) +
                                                    colorOffset);
                        dot = COLOR_ADD(temp, vdp1cor, vdp1cog, vdp1cob);
                    }

                    if(dot2 || SPD) {
                        temp = Vdp2ColorRamGetColor((dot2 | colorBank) +
                                                    colorOffset);
                        dot2 = COLOR_ADD(temp, vdp1cor, vdp1cog, vdp1cob);
                    }

                    store_queue[queuepos++] = dot | (dot2 << 16);

                    if(queuepos == 8) {
                        asm("pref @%0" : : "r"(store_queue));
                        queuepos = 0;
                        store_queue += 8;
                    }
                }

                if(queuepos) {
                    asm("pref @%0" : : "r"(store_queue));
                    queuepos = 0;
                }

                cur_addr += wi * 2;
            }
            break;
        }

        case 5:
        {

            int i, j;

            for(i = 0; i < cur_spr.h; ++i) {
                store_queue = (uint32 *) (0xE0000000 |
                                          (cur_addr & 0x03FFFFE0));

                for(j = 0; j < cur_spr.w; j += 2) {
                    dot = T1ReadWord(Vdp1Ram, charAddr & 0x7FFFF);
                    dot2 = T1ReadWord(Vdp1Ram, (charAddr + 2) & 0x7FFFF);
                    charAddr = charAddr + 4;

                    if(dot || SPD)
                        dot = COLOR_ADD(SAT2YAB1(dot), vdp1cor, vdp1cog,
                                        vdp1cob);

                    if(dot2 || SPD)
                        dot2 = COLOR_ADD(SAT2YAB1(dot2), vdp1cor, vdp1cog,
                                         vdp1cob);

                    store_queue[queuepos++] = dot | (dot2 << 16);

                    if(queuepos == 8) {
                        asm("pref @%0" : : "r"(store_queue));
                        queuepos = 0;
                        store_queue += 8;
                    }
                }

                if(queuepos) {
                    asm("pref @%0" : : "r"(store_queue));
                    queuepos = 0;
                }

                cur_addr += wi * 2;
            }
            break;
        }

        default:
            VDP1LOG("Unimplemented sprite color mode: %X\n",
                    (cmd->CMDPMOD >> 3) & 0x7);
            return 0;
    }

    if(cached_spr < 1023) {
        cache[cached_spr].vdp1_base = cmd->CMDSRCA << 3;
        cache[cached_spr].pvr_base = cur_base;
        cache[cached_spr].w = cur_spr.w;
        cache[cached_spr].h = cur_spr.h;

        cached_spr++;
    }

fillHeader:

    cur_spr.uf = (float) cur_spr.w / wi;
    cur_spr.vf = (float) cur_spr.h / he;

    hdr->mode2 &= (~(PVR_TA_PM2_USIZE_MASK | PVR_TA_PM2_VSIZE_MASK));

    switch (wi) {
        case 8: break;
        case 16: hdr->mode2 |= (1 << PVR_TA_PM2_USIZE_SHIFT); break;
        case 32: hdr->mode2 |= (2 << PVR_TA_PM2_USIZE_SHIFT); break;
        case 64: hdr->mode2 |= (3 << PVR_TA_PM2_USIZE_SHIFT); break;
        case 128: hdr->mode2 |= (4 << PVR_TA_PM2_USIZE_SHIFT); break;
        case 256: hdr->mode2 |= (5 << PVR_TA_PM2_USIZE_SHIFT); break;
        case 512: hdr->mode2 |= (6 << PVR_TA_PM2_USIZE_SHIFT); break;
        case 1024: hdr->mode2 |= (7 << PVR_TA_PM2_USIZE_SHIFT); break;
        default: assert_msg(0, "Invalid texture U size"); break;
    }

    switch (he) {
        case 8: break;
        case 16: hdr->mode2 |= (1 << PVR_TA_PM2_VSIZE_SHIFT); break;
        case 32: hdr->mode2 |= (2 << PVR_TA_PM2_VSIZE_SHIFT); break;
        case 64: hdr->mode2 |= (3 << PVR_TA_PM2_VSIZE_SHIFT); break;
        case 128: hdr->mode2 |= (4 << PVR_TA_PM2_VSIZE_SHIFT); break;
        case 256: hdr->mode2 |= (5 << PVR_TA_PM2_VSIZE_SHIFT); break;
        case 512: hdr->mode2 |= (6 << PVR_TA_PM2_VSIZE_SHIFT); break;
        case 1024: hdr->mode2 |= (7 << PVR_TA_PM2_VSIZE_SHIFT); break;
        default: assert_msg(0, "Invalid texture V size"); break;
    }

    hdr->mode3 = ((cur_base & 0x00FFFFF8) >> 3) | (PVR_TXRFMT_NONTWIDDLED);


    cur_addr = (cur_addr & 0x03FFFFE0) + 0x20;

    return 1;
}
