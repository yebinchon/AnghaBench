#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int colornumber; int charaddr; int coloroffset; int paladdr; int (* PostPixelFetchCalc ) (TYPE_1__*,int) ;int /*<<< orphan*/  priority; int /*<<< orphan*/  transparencyenable; } ;
typedef  TYPE_1__ vdp2draw_struct ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_10__ {int pixeloffset; int ystart; int yend; int xstart; int xend; int lineincrement; } ;
typedef  TYPE_2__ clipping_struct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  Vdp2Ram ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (TYPE_1__*,int) ; 
 int* vdp2_fb ; 
 int /*<<< orphan*/ ** vdp2_prio ; 
 int /*<<< orphan*/  FUNC10 (int,int,int,int /*<<< orphan*/ ) ; 
 int vdp2width ; 

void FUNC11(vdp2draw_struct *info)
{
    int i, i2;
    clipping_struct clip;

    FUNC0(info, &clip);

    switch (info->colornumber)
    {
        case 0: // 4 BPP(16 colors)
                // fix me
            FUNC6("vdp2 bitmap 4 bpp draw\n");
            return;
        case 1: // 8 BPP(256 colors)
            info->charaddr += clip.pixeloffset;

            for (i = clip.ystart; i < clip.yend; i++)
            {
                for (i2 = clip.xstart; i2 < clip.xend; i2++)
                {
                    u16 color = FUNC2(Vdp2Ram, info->charaddr);
                    info->charaddr++;

                    if (color == 0 && info->transparencyenable) {
                        FUNC10(i2, i, 0, info->priority);
                    }
                    else    {
                        color = FUNC5(info->coloroffset + (info->paladdr | color));
                        FUNC10(i2, i, info->PostPixelFetchCalc(info, color) | 0x8000, info->priority);
                    }
                }

                info->charaddr += clip.lineincrement;
            }

            return;
        case 2:
            FUNC6("vdp2 bitmap 16bpp palette draw\n");
            break;
        case 3: // 15 BPP
            clip.pixeloffset *= 2;
            clip.lineincrement *= 2;

            info->charaddr += clip.pixeloffset;

            for (i = clip.ystart; i < clip.yend; i++)
            {
                for (i2 = clip.xstart; i2 < clip.xend; i2++)
                {
                    u16 color = FUNC4(Vdp2Ram, info->charaddr);
                    info->charaddr += 2;

                    if ((color & 0x8000) == 0 && info->transparencyenable)
                        vdp2_fb[(i * vdp2width) + i2] = 0;
                    else
                        vdp2_fb[(i * vdp2width) + i2] = info->PostPixelFetchCalc(info, FUNC1(color)) | 0x8000;

                    vdp2_prio[i][i2] = info->priority;
                }

                info->charaddr += clip.lineincrement;
            }

            return;
        case 4: // 24 BPP
            clip.pixeloffset *= 4;
            clip.lineincrement *= 4;

            info->charaddr += clip.pixeloffset;

            for (i = clip.ystart; i < clip.yend; i++)
            {
                for (i2 = clip.xstart; i2 < clip.xend; i2++)
                {
                    u32 color = FUNC3(Vdp2Ram, info->charaddr);
                    info->charaddr += 4;

                    if ((color & 0x80000000) == 0 && info->transparencyenable)
                        FUNC10(i2, i, 0, info->priority);
                    else    {
                        u16 dot = ((color & 0xF80000) >> 19 |
                                   (color & 0x00F800) >> 6 |
                                   (color & 0x0000F8) << 7 | 0x8000);
                        FUNC10(i2, i, info->PostPixelFetchCalc(info, dot), info->priority);
                    }
                }

                info->charaddr += clip.lineincrement;

            }
            return;
        default: break;
    }
}