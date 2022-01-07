
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int cor; int cog; int cob; int (* PostPixelFetchCalc ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ vdp2draw_struct ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_18__ {scalar_t__ yend; scalar_t__ xend; scalar_t__ ystart; scalar_t__ xstart; } ;
typedef TYPE_2__ clipping_struct ;
struct TYPE_20__ {scalar_t__ disptoggle; } ;
struct TYPE_19__ {int SPCTL; int PRISA; int PRISB; int PRISC; int PRISD; int CRAOFB; int CLOFEN; int CLOFSL; int COBR; int COBG; int COBB; int COAR; int COAG; int COAB; int CCCTL; int WCTLC; } ;


 int COLSAT2YAB16 (int,int) ;
 int COLSAT2YAB32 (int,int ) ;
 int COLSATSTRIPPRIORITY (int) ;
 int DoColorCalc (TYPE_1__*,int ) ;
 int DoColorCalcWithColorOffset (TYPE_1__*,int ) ;
 int DoColorOffset (TYPE_1__*,int ) ;
 int DoNothing (TYPE_1__*,int ) ;
 int GL_BLEND ;
 int GL_RGBA ;
 int GL_UNSIGNED_BYTE ;
 int LOG (char*,int) ;
 int OSDDisplayMessages (int*,int,int) ;
 scalar_t__ OSDUseBuffer () ;
 int ReadLineWindowClip (int,TYPE_2__*,int*,int*,int ,TYPE_5__*) ;
 int ReadLineWindowData (int*,int,int*,int*,TYPE_5__*) ;
 int ReadWindowData (int,TYPE_2__*,TYPE_5__*) ;
 int TestWindow (int,int,int,TYPE_2__*,int,int) ;
 int VIDGCDVdp1SwapFrameBuffer () ;
 TYPE_6__ Vdp1External ;
 int Vdp1ProcessSpritePixel (int,int*,int*,int*,int*) ;
 int Vdp2ColorRamGetColor (int) ;
 int Vdp2GetPixelPriority (int) ;
 int Vdp2Ram ;
 TYPE_5__* Vdp2Regs ;
 int YuiSwapBuffers () ;
 int* dispbuffer ;
 int glDisable (int ) ;
 int glDrawPixels (int,int,int ,int ,int*) ;
 int glPixelZoom (float,scalar_t__) ;
 int glRasterPos2i (int ,int ) ;
 scalar_t__ outputheight ;
 scalar_t__ outputwidth ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;
 int* vdp1frontframebuffer ;
 int vdp1pixelsize ;
 int vdp1spritetype ;
 int vdp1width ;
 int* vdp2framebuffer ;
 int vdp2height ;
 int vdp2width ;

void VIDGCDVdp2DrawEnd(void)
{

   int i, i2;
   u16 pixel;
   u8 prioritytable[8];
   u32 vdp1coloroffset;
   int colormode = Vdp2Regs->SPCTL & 0x20;
   vdp2draw_struct info;
   u32 *dst=dispbuffer;
   u32 *vdp2src=vdp2framebuffer;
   int islinewindow;
   clipping_struct clip[2];
   u32 linewnd0addr, linewnd1addr;
   int wctl;



   if (Vdp1External.disptoggle)
   {
      prioritytable[0] = Vdp2Regs->PRISA & 0x7;
      prioritytable[1] = (Vdp2Regs->PRISA >> 8) & 0x7;
      prioritytable[2] = Vdp2Regs->PRISB & 0x7;
      prioritytable[3] = (Vdp2Regs->PRISB >> 8) & 0x7;
      prioritytable[4] = Vdp2Regs->PRISC & 0x7;
      prioritytable[5] = (Vdp2Regs->PRISC >> 8) & 0x7;
      prioritytable[6] = Vdp2Regs->PRISD & 0x7;
      prioritytable[7] = (Vdp2Regs->PRISD >> 8) & 0x7;

      vdp1coloroffset = (Vdp2Regs->CRAOFB & 0x70) << 4;
      vdp1spritetype = Vdp2Regs->SPCTL & 0xF;

      if (Vdp2Regs->CLOFEN & 0x40)
      {

         if (Vdp2Regs->CLOFSL & 0x40)
         {

            info.cor = Vdp2Regs->COBR & 0xFF;
            if (Vdp2Regs->COBR & 0x100)
               info.cor |= 0xFFFFFF00;

            info.cog = Vdp2Regs->COBG & 0xFF;
            if (Vdp2Regs->COBG & 0x100)
               info.cog |= 0xFFFFFF00;

            info.cob = Vdp2Regs->COBB & 0xFF;
            if (Vdp2Regs->COBB & 0x100)
               info.cob |= 0xFFFFFF00;
         }
         else
         {

            info.cor = Vdp2Regs->COAR & 0xFF;
            if (Vdp2Regs->COAR & 0x100)
               info.cor |= 0xFFFFFF00;

            info.cog = Vdp2Regs->COAG & 0xFF;
            if (Vdp2Regs->COAG & 0x100)
               info.cog |= 0xFFFFFF00;

            info.cob = Vdp2Regs->COAB & 0xFF;
            if (Vdp2Regs->COAB & 0x100)
               info.cob |= 0xFFFFFF00;
         }

         if (info.cor == 0 && info.cog == 0 && info.cob == 0)
         {
            if (Vdp2Regs->CCCTL & 0x40)
               info.PostPixelFetchCalc = &DoColorCalc;
            else
               info.PostPixelFetchCalc = &DoNothing;
         }
         else
         {
            if (Vdp2Regs->CCCTL & 0x40)
               info.PostPixelFetchCalc = &DoColorCalcWithColorOffset;
            else
               info.PostPixelFetchCalc = &DoColorOffset;
         }
      }
      else
      {
         if (Vdp2Regs->CCCTL & 0x40)
            info.PostPixelFetchCalc = &DoColorCalc;
         else
            info.PostPixelFetchCalc = &DoNothing;
      }

      wctl = Vdp2Regs->WCTLC >> 8;
      clip[0].xstart = clip[0].ystart = clip[0].xend = clip[0].yend = 0;
      clip[1].xstart = clip[1].ystart = clip[1].xend = clip[1].yend = 0;
      ReadWindowData(wctl, clip, Vdp2Regs);
      linewnd0addr = linewnd1addr = 0;
      ReadLineWindowData(&islinewindow, wctl, &linewnd0addr, &linewnd1addr, Vdp2Regs);

      for (i2 = 0; i2 < vdp2height; i2++)
      {
         ReadLineWindowClip(islinewindow, clip, &linewnd0addr, &linewnd1addr, Vdp2Ram, Vdp2Regs);

         for (i = 0; i < vdp2width; i++)
         {


            if (!TestWindow(wctl, 0x2, 0x1, &clip[0], i, i2))
            {
               dst[0] = COLSATSTRIPPRIORITY(vdp2src[0]);
               vdp2src++;
               dst++;
               continue;
            }


            if (!TestWindow(wctl, 0x8, 0x4, &clip[1], i, i2))
            {
               vdp2src++;
               dst[0] = COLSATSTRIPPRIORITY(vdp2src[0]);
               dst++;
               continue;
            }

            if (vdp1pixelsize == 2)
            {

               pixel = ((u16 *)vdp1frontframebuffer)[(i2 * vdp1width) + i];

               if (pixel == 0)
                  dst[0] = COLSATSTRIPPRIORITY(vdp2src[0]);
               else if (pixel & 0x8000 && colormode)
               {

                  if (prioritytable[0] >= Vdp2GetPixelPriority(vdp2src[0]))
                  {




                     if (pixel != 0x8000 || vdp1spritetype < 2 || (vdp1spritetype < 8 && !(Vdp2Regs->SPCTL & 0x10)))
                        dst[0] = info.PostPixelFetchCalc(&info, COLSAT2YAB16(0xFF, pixel));
                     else
                        dst[0] = COLSATSTRIPPRIORITY(vdp2src[0]);
                  }
                  else
                     dst[0] = COLSATSTRIPPRIORITY(vdp2src[0]);
               }
               else
               {

    int priority;
    int shadow;
    int colorcalc;
    priority = 0;
                  Vdp1ProcessSpritePixel(vdp1spritetype, &pixel, &shadow, &priority, &colorcalc);
                  if (prioritytable[priority] >= Vdp2GetPixelPriority(vdp2src[0]))
                     dst[0] = info.PostPixelFetchCalc(&info, COLSAT2YAB32(0xFF, Vdp2ColorRamGetColor(vdp1coloroffset + pixel)));
                  else
                     dst[0] = COLSATSTRIPPRIORITY(vdp2src[0]);
               }
            }
            else
            {

               pixel = vdp1frontframebuffer[(i2 * vdp1width) + i];

               if (pixel == 0)
                  dst[0] = COLSATSTRIPPRIORITY(vdp2src[0]);
               else
               {

                  LOG("8-bit Color Bank draw - %02X\n", pixel);
                  dst[0] = COLSATSTRIPPRIORITY(vdp2src[0]);
               }
            }
            vdp2src++;
            dst++;
         }
      }
   }
   else
   {

      for (i = 0; i < (vdp2width*vdp2height); i++)
         dispbuffer[i] = COLSATSTRIPPRIORITY(vdp2framebuffer[i]);
   }


   VIDGCDVdp1SwapFrameBuffer();

   if (OSDUseBuffer())
      OSDDisplayMessages(dispbuffer, vdp2width, vdp2height);
   YuiSwapBuffers();
}
