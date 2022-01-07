
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int CMDSIZE; scalar_t__ CMDYA; scalar_t__ CMDXA; } ;
typedef TYPE_1__ vdp1cmd_struct ;
typedef int u8 ;
typedef scalar_t__ s16 ;
struct TYPE_8__ {scalar_t__ localY; scalar_t__ localX; int addr; } ;
typedef TYPE_2__ Vdp1 ;


 int Vdp1ReadCommand (TYPE_1__*,int ,int *) ;
 int drawQuad (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,TYPE_2__*,TYPE_1__*,int *) ;

void VIDSoftVdp1NormalSpriteDraw(u8 * ram, Vdp1 * regs, u8 * back_framebuffer) {

 s16 topLeftx,topLefty,topRightx,topRighty,bottomRightx,bottomRighty,bottomLeftx,bottomLefty;
 int spriteWidth;
 int spriteHeight;
   vdp1cmd_struct cmd;
 Vdp1ReadCommand(&cmd, regs->addr, ram);

 topLeftx = cmd.CMDXA + regs->localX;
 topLefty = cmd.CMDYA + regs->localY;
 spriteWidth = ((cmd.CMDSIZE >> 8) & 0x3F) * 8;
 spriteHeight = cmd.CMDSIZE & 0xFF;

 topRightx = topLeftx + (spriteWidth - 1);
 topRighty = topLefty;
 bottomRightx = topLeftx + (spriteWidth - 1);
 bottomRighty = topLefty + (spriteHeight - 1);
 bottomLeftx = topLeftx;
 bottomLefty = topLefty + (spriteHeight - 1);

   drawQuad(topLeftx, topLefty, bottomLeftx, bottomLefty, topRightx, topRighty, bottomRightx, bottomRighty, ram, regs, &cmd, back_framebuffer);
}
