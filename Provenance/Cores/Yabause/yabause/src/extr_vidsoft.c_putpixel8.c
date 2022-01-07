
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CMDPMOD; } ;
typedef TYPE_1__ vdp1cmd_struct ;
typedef int u8 ;
typedef int Vdp1 ;


 scalar_t__ CheckDil (int,int *) ;
 scalar_t__ IsClipped (int,int,int *,TYPE_1__*) ;
 int currentPixel ;
 int currentPixelIsVisible ;
 int vdp1interlace ;
 int vdp1width ;

__attribute__((used)) static void putpixel8(int x, int y, Vdp1 * regs, vdp1cmd_struct *cmd, u8 * back_framebuffer) {

    int y2 = y / vdp1interlace;
    u8 * iPix = &back_framebuffer[(y2 * vdp1width) + x];
    int mesh = cmd->CMDPMOD & 0x0100;
    int SPD = ((cmd->CMDPMOD & 0x40) != 0);

    if (iPix >= (back_framebuffer + 0x40000))
        return;

    if (CheckDil(y, regs))
       return;

    currentPixel &= 0xFF;

    if (mesh && ((x ^ y2) & 1)) {
       return;
    }

    if (IsClipped(x, y, regs, cmd))
       return;

    if ( SPD || (currentPixel & currentPixelIsVisible))
    {
        switch( cmd->CMDPMOD & 0x7 )
        {
        default:
        case 0:
            if (!((currentPixel == 0) && !SPD))
                *(iPix) = currentPixel;
            break;
        }
    }
}
