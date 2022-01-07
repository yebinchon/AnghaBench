
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int BGON; int PNCN2; int CHCTLB; int PLSZ; int MPABN2; int MPCDN2; int MPOFN; int SCXN2; int SCYN2; int CRAOFA; int SFPRMD; int PRINB; int CCRNB; int SFCCMD; int WCTLB; } ;


 char* AddBppString (char*,int) ;
 char* AddColorCalcInfo (char*,int,int,int,int) ;
 char* AddColorOffsetInfo (char*,int) ;
 char* AddMapInfo (char*,int,int,int,int,int,int*) ;
 char* AddMosaicString (char*,int) ;
 char* AddSpecialPriorityInfo (char*,int) ;
 int AddString (char*,char*,...) ;
 char* AddWindowInfoString (char*,int ,int ) ;
 int Vdp2GetPlaneSize (int,int*,int*) ;
 TYPE_1__* Vdp2Regs ;

void Vdp2DebugStatsNBG2(char *outstring, int *isenabled)
{
   u8 map[4];

   if (Vdp2Regs->BGON & 0x4)
   {
      int patterndatasize;
      u16 supplementdata=Vdp2Regs->PNCN2 & 0x3FF;
      int planew=0, planeh=0;
      int patternwh=(Vdp2Regs->CHCTLB & 0x1) + 1;


      *isenabled = 1;


      outstring = AddMosaicString(outstring, 0x4);


      outstring = AddBppString(outstring, (Vdp2Regs->CHCTLB & 0x2) >> 1);

      if(Vdp2Regs->PNCN2 & 0x8000)
         patterndatasize = 1;
      else
         patterndatasize = 2;

      AddString(outstring, "Tile(%dH x %dV)\r\n", patternwh, patternwh);

      Vdp2GetPlaneSize((Vdp2Regs->PLSZ & 0x30) >> 4, &planew, &planeh);
      AddString(outstring, "Plane Size = %dH x %dV\r\n", planew, planeh);


      if (patterndatasize == 2)
      {
         AddString(outstring, "Pattern Name data size = 2 words\r\n");
      }
      else
      {
         AddString(outstring, "Pattern Name data size = 1 word\r\n");
         AddString(outstring, "Character Number Supplement bit = %d\r\n", (supplementdata >> 14) & 0x1);
         AddString(outstring, "Special Priority bit = %d\r\n", (supplementdata >> 9) & 0x1);
         AddString(outstring, "Special Color Calculation bit = %d\r\n", (supplementdata >> 8) & 0x1);
         AddString(outstring, "Supplementary Palette number = %d\r\n", (supplementdata >> 5) & 0x7);
         AddString(outstring, "Supplementary Color number = %d\r\n", supplementdata & 0x1f);
      }

      map[0] = Vdp2Regs->MPABN2 & 0xFF;
      map[1] = Vdp2Regs->MPABN2 >> 8;
      map[2] = Vdp2Regs->MPCDN2 & 0xFF;
      map[3] = Vdp2Regs->MPCDN2 >> 8;
      outstring = AddMapInfo(outstring, patternwh, Vdp2Regs->PNCN2, (Vdp2Regs->PLSZ >> 4) & 0x3, (Vdp2Regs->MPOFN & 0x700) >> 2, 4, map);
      AddString(outstring, "Screen Scroll x = %d, y = %d\r\n", - ((Vdp2Regs->SCXN2 & 0x7FF) % 512), - ((Vdp2Regs->SCYN2 & 0x7FF) % 512));


      outstring = AddWindowInfoString(outstring, Vdp2Regs->WCTLB, 0);




      AddString(outstring, "Color Ram Address Offset = %X\r\n", Vdp2Regs->CRAOFA & 0x700);


      outstring = AddSpecialPriorityInfo(outstring, Vdp2Regs->SFPRMD >> 4);






      AddString(outstring, "Priority = %d\r\n", Vdp2Regs->PRINB & 0x7);


      outstring = AddColorCalcInfo(outstring, 0x0004, 0x0005, Vdp2Regs->CCRNB & 0x1F, (Vdp2Regs->SFCCMD >> 4) & 0x3);


      outstring = AddColorOffsetInfo(outstring, 0x0004);

      AddString(outstring, "Special Color Calculation %d\r\n",(Vdp2Regs->SFCCMD>>4)&0x03);
   }
   else
   {

     *isenabled = 0;
   }
}
