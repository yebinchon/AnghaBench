
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ s16 ;
typedef int Vdp1 ;
struct TYPE_5__ {scalar_t__ localY; scalar_t__ localX; int addr; } ;
struct TYPE_4__ {int CMDSIZE; scalar_t__ CMDYA; scalar_t__ CMDXA; } ;


 int Vdp1Ram ;
 int Vdp1ReadCommand (TYPE_1__*,int ,int ) ;
 TYPE_2__* Vdp1Regs ;
 TYPE_1__ cmd ;
 int drawQuad (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

void VIDGCDVdp1NormalSpriteDraw(u8 * ram, Vdp1 * regs, u8* back_framebuffer) {

 s16 topLeftx,topLefty,topRightx,topRighty,bottomRightx,bottomRighty,bottomLeftx,bottomLefty;
 int spriteWidth;
 int spriteHeight;
 Vdp1ReadCommand(&cmd, Vdp1Regs->addr, Vdp1Ram);

 topLeftx = cmd.CMDXA + Vdp1Regs->localX;
 topLefty = cmd.CMDYA + Vdp1Regs->localY;
 spriteWidth = ((cmd.CMDSIZE >> 8) & 0x3F) * 8;
 spriteHeight = cmd.CMDSIZE & 0xFF;

 topRightx = topLeftx + (spriteWidth - 1);
 topRighty = topLefty;
 bottomRightx = topLeftx + (spriteWidth - 1);
 bottomRighty = topLefty + (spriteHeight - 1);
 bottomLeftx = topLeftx;
 bottomLefty = topLefty + (spriteHeight - 1);

 drawQuad(topLeftx,topLefty,bottomLeftx,bottomLefty,topRightx,topRighty,bottomRightx,bottomRighty);
}
