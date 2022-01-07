
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int CMDCTRL; int CMDSRCA; int CMDCOLR; int CMDPMOD; } ;


 int T1ReadWord (int ,int) ;
 int Vdp1Ram ;
 int Vdp1ReadPattern128 (int,int) ;
 int Vdp1ReadPattern16 (int,int) ;
 int Vdp1ReadPattern256 (int,int) ;
 int Vdp1ReadPattern64 (int,int) ;
 int Vdp1ReadPattern64k (int,int) ;
 int characterHeight ;
 int characterWidth ;
 TYPE_1__ cmd ;
 int currentPixel ;
 int currentPixelIsVisible ;

__attribute__((used)) static int getpixel(int linenumber, int currentlineindex) {

 u32 characterAddress;
 u32 colorlut;
 u16 colorbank;
 u8 SPD;
 int endcode;
 int endcodesEnabled;
 int untexturedColor = 0;
 int isTextured = 1;
 int currentShape = cmd.CMDCTRL & 0x7;
 int flip;

 characterAddress = cmd.CMDSRCA << 3;
 colorbank = cmd.CMDCOLR;
 colorlut = (u32)colorbank << 3;
 SPD = ((cmd.CMDPMOD & 0x40) != 0);
 endcodesEnabled = (( cmd.CMDPMOD & 0x80) == 0 )?1:0;
 flip = (cmd.CMDCTRL & 0x30) >> 4;


 if(currentShape == 4 || currentShape == 5 || currentShape == 6) {
  isTextured = 0;
  untexturedColor = cmd.CMDCOLR;
 }

 switch( flip ) {
  case 1:

   currentlineindex = characterWidth - currentlineindex-1;
   break;
  case 2:

   linenumber = characterHeight - linenumber-1;

   break;
  case 3:

   linenumber = characterHeight - linenumber-1;
   currentlineindex = characterWidth - currentlineindex-1;
   break;
 }

 switch ((cmd.CMDPMOD >> 3) & 0x7)
 {
  case 0x0:
   endcode = 0xf;
   currentPixel = Vdp1ReadPattern16( characterAddress + (linenumber*(characterWidth>>1)), currentlineindex );
   if(isTextured && endcodesEnabled && currentPixel == endcode)
    return 1;
   if (!((currentPixel == 0) && !SPD))
    currentPixel = colorbank | currentPixel;
   currentPixelIsVisible = 0xf;
   break;

  case 0x1:
   endcode = 0xf;
   currentPixel = Vdp1ReadPattern16( characterAddress + (linenumber*(characterWidth>>1)), currentlineindex );
   if(isTextured && endcodesEnabled && currentPixel == endcode)
    return 1;
   if (!(currentPixel == 0 && !SPD))
    currentPixel = T1ReadWord(Vdp1Ram, (currentPixel * 2 + colorlut) & 0x7FFFF);
   currentPixelIsVisible = 0xffff;
   break;
  case 0x2:







   endcode = 63;
   currentPixel = Vdp1ReadPattern64( characterAddress + (linenumber*(characterWidth)), currentlineindex );
   if(isTextured && endcodesEnabled && currentPixel == endcode)
    currentPixel = 0;

   if (!((currentPixel == 0) && !SPD))
    currentPixel = colorbank | currentPixel;
   currentPixelIsVisible = 0x3f;
   break;
  case 0x3:
   endcode = 0xff;
   currentPixel = Vdp1ReadPattern128( characterAddress + (linenumber*characterWidth), currentlineindex );
   if(isTextured && endcodesEnabled && currentPixel == endcode)
    return 1;
   if (!((currentPixel == 0) && !SPD))
    currentPixel = colorbank | currentPixel;
   currentPixelIsVisible = 0x7f;
   break;
  case 0x4:
   endcode = 0xff;
   currentPixel = Vdp1ReadPattern256( characterAddress + (linenumber*characterWidth), currentlineindex );
   if(isTextured && endcodesEnabled && currentPixel == endcode)
    return 1;
   currentPixelIsVisible = 0xff;
   if (!((currentPixel == 0) && !SPD))
    currentPixel = colorbank | currentPixel;
   break;
  case 0x5:
   endcode = 0x7fff;
   currentPixel = Vdp1ReadPattern64k( characterAddress + (linenumber*characterWidth*2), currentlineindex );
   if(isTextured && endcodesEnabled && currentPixel == endcode)
    return 1;
   currentPixelIsVisible = 0xffff;
   break;
 }

 if(!isTextured)
  currentPixel = untexturedColor;


 currentPixel |= cmd.CMDPMOD & (1 << 15);

 return 0;
}
