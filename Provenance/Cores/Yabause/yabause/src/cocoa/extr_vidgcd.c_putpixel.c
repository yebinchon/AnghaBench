
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
typedef int * iPix ;
struct TYPE_6__ {int CMDPMOD; int CMDCTRL; } ;
struct TYPE_5__ {scalar_t__ b; scalar_t__ g; scalar_t__ r; } ;
struct TYPE_4__ {int* priosused; size_t* prioritytable; } ;


 int COLOR (int,int,int) ;
 int PopUserClipping () ;
 int PushUserClipping (int) ;
 int Vdp1ProcessSpritePixel (int ,int*,int*,int*,int*) ;
 int alphablend16 (int,int,int) ;
 TYPE_3__ cmd ;
 int currentPixel ;
 int currentPixelIsVisible ;
 int gouraudAdjust (int,int) ;
 TYPE_2__ leftColumnColor ;
 scalar_t__ vdp1backframebuffer ;
 int vdp1clipxend ;
 int vdp1clipxstart ;
 int vdp1clipyend ;
 int vdp1clipystart ;
 TYPE_1__ vdp1draw_info ;
 int vdp1spritetype ;
 int vdp1width ;

__attribute__((used)) static void putpixel(int x, int y) {

 u16* iPix = &((u16 *)vdp1backframebuffer)[(y * vdp1width) + x];
 int mesh = cmd.CMDPMOD & 0x0100;
 int SPD = ((cmd.CMDPMOD & 0x40) != 0);
 int currentShape = cmd.CMDCTRL & 0x7;
 int isTextured=1;

 if(mesh && (x^y)&1)
  return;

 if(currentShape == 4 || currentShape == 5 || currentShape == 6)
  isTextured = 0;

 if (cmd.CMDPMOD & 0x0400) PushUserClipping((cmd.CMDPMOD >> 9) & 0x1);

 if (x >= vdp1clipxstart &&
  x < vdp1clipxend &&
  y >= vdp1clipystart &&
  y < vdp1clipyend)
 {}
 else
  return;

 if (cmd.CMDPMOD & 0x0400) PopUserClipping();


 if ( SPD || (currentPixel & currentPixelIsVisible))
 {
  switch( cmd.CMDPMOD & 0x7 )
  {
  case 0:
   if (!((currentPixel == 0) && !SPD))
    *(iPix) = currentPixel;
   break;
  case 1:
   *(iPix) = currentPixel;
   break;
  case 2:
   *(iPix) = ((currentPixel & ~0x8421) >> 1) | (1 << 15);
   break;
  case 3:
   if ( *(iPix) & (1 << 15) )
    *(iPix) = alphablend16( *(iPix), currentPixel, (1 << 7) ) | (1 << 15);
   else
    *(iPix) = currentPixel;
   break;
  case 4:




   if(
    (((cmd.CMDPMOD >> 3) & 0x7) != 5) &&
    (((cmd.CMDPMOD >> 3) & 0x7) != 1) &&
    (int)leftColumnColor.g == 16 &&
    (int)leftColumnColor.b == 16)
   {
    int c = (int)(leftColumnColor.r-0x10);
    if(c < 0) c = 0;
    currentPixel = currentPixel+c;
    *(iPix) = currentPixel;
    break;
   }
   *(iPix) = (((gouraudAdjust( currentPixel&0x001F, (int)leftColumnColor.r))&0x1F)|(((gouraudAdjust( (currentPixel&0x03e0) >> 5, (int)leftColumnColor.g))&0x1F)<<5)|(((gouraudAdjust( (currentPixel&0x7c00) >> 10, (int)leftColumnColor.b))&0x1F)<<10) |0x8000 );
   break;
  default:
   *(iPix) = alphablend16( ((((int)leftColumnColor.r)&0x1F)|((((int)leftColumnColor.g)&0x1F)<<5)|((((int)leftColumnColor.b)&0x1F)<<10) |0x8000 ), currentPixel, (1 << 7) ) | (1 << 15);
   break;
  }

        if(*iPix & 0x8000) {
            vdp1draw_info.priosused[vdp1draw_info.prioritytable[0]] = 1;
        }
        else if(*iPix) {
            u16 p = *iPix;
            int s, prio, c;

            Vdp1ProcessSpritePixel(vdp1spritetype, &p, &s, &prio, &c);
            vdp1draw_info.priosused[prio] = 1;
        }
 }
}
