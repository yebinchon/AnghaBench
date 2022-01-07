
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int CHCTLB; int BGON; int RPMD; int KTCTL; int WCTLD; int MPOFR; int PNCR; int PLSZ; int MPABRA; int MPCDRA; int MPEFRA; int MPGHRA; int MPIJRA; int MPKLRA; int MPMNRA; int MPOPRA; int MPABRB; int MPCDRB; int MPEFRB; int MPGHRB; int MPIJRB; int MPKLRB; int MPMNRB; int MPOPRB; int CRAOFB; int SFPRMD; int PRIR; int CCRR; int SFCCMD; int WCTLC; int BMPNB; } ;


 char* AddBitmapInfoString (char*,int,int ,int) ;
 char* AddBppString (char*,int) ;
 char* AddColorCalcInfo (char*,int,int,int,int) ;
 char* AddColorOffsetInfo (char*,int) ;
 char* AddMapInfo (char*,int,int,int,int,int,int*) ;
 char* AddMosaicString (char*,int) ;
 char* AddSpecialPriorityInfo (char*,int) ;
 int AddString (char*,char*,...) ;
 char* AddWindowInfoString (char*,int ,int ) ;
 int CalcWindowCoordinates (int,int*,int*,int*,int*) ;
 int Vdp2GetPlaneSize (int,int*,int*) ;
 TYPE_1__* Vdp2Regs ;

void Vdp2DebugStatsRBG0(char *outstring, int *isenabled)
{
   int patternwh=((Vdp2Regs->CHCTLB & 0x100) >> 8) + 1;
   u8 map[16];
   int hstart, vstart, hend, vend;

   if (Vdp2Regs->BGON & 0x10)
   {

      int rotatenum=0;
      int coeftbl=0, coefmode=0;

      *isenabled = 1;


      switch (Vdp2Regs->RPMD & 0x3)
      {
         case 0:

            rotatenum = 0;
            coeftbl = Vdp2Regs->KTCTL & 0x1;
            coefmode = (Vdp2Regs->KTCTL >> 2) & 0x3;
            AddString(outstring, "Using Parameter %C\r\n", 'A' + rotatenum);
            break;
         case 1:

            rotatenum = 1;
            coeftbl = Vdp2Regs->KTCTL & 0x100;
            coefmode = (Vdp2Regs->KTCTL >> 10) & 0x3;
            AddString(outstring, "Using Parameter B\r\n");
            break;
         case 2:

            AddString(outstring, "Parameter A/B switched via coefficients\r\n");
            break;
         case 3:

            AddString(outstring, "Parameter A/B switched parameter window\r\n");
            if (Vdp2Regs->WCTLD & 0x2)
            {
               AddString(outstring, "Rotation Window 0 Enabled\r\n");
               CalcWindowCoordinates(0, &hstart, &vstart, &hend, &vend);
               AddString(outstring, "Horizontal start = %d\r\n", hstart);
               AddString(outstring, "Vertical start = %d\r\n", vstart);
               AddString(outstring, "Horizontal end = %d\r\n", hend);
               AddString(outstring, "Vertical end = %d\r\n", vend);
            }
            else if (Vdp2Regs->WCTLD & 0x4)
            {
               AddString(outstring, "Rotation Window 1 Enabled\r\n");
               CalcWindowCoordinates(1, &hstart, &vstart, &hend, &vend);
               AddString(outstring, "Horizontal start = %d\r\n", hstart);
               AddString(outstring, "Vertical start = %d\r\n", vstart);
               AddString(outstring, "Horizontal end = %d\r\n", hend);
               AddString(outstring, "Vertical end = %d\r\n", vend);
            }
            break;
      }

      if (coeftbl)
      {
         AddString(outstring, "Coefficient Table Enabled(Mode %d)\r\n", coefmode);
      }


      outstring = AddMosaicString(outstring, 0x10);


      outstring = AddBppString(outstring, (Vdp2Regs->CHCTLB >> 12) & 0x7);


      if (Vdp2Regs->CHCTLB & 0x200)
      {

         if (rotatenum == 0)
         {

            outstring = AddBitmapInfoString(outstring, (Vdp2Regs->CHCTLB & 0x400) >> 10, Vdp2Regs->BMPNB, Vdp2Regs->MPOFR);
         }
         else
         {

            outstring = AddBitmapInfoString(outstring, (Vdp2Regs->CHCTLB & 0x400) >> 10, Vdp2Regs->BMPNB, Vdp2Regs->MPOFR >> 4);
         }
      }
      else
      {

         int patterndatasize;
         u16 supplementdata=Vdp2Regs->PNCR & 0x3FF;
         int planew=0, planeh=0;

         if(Vdp2Regs->PNCR & 0x8000)
            patterndatasize = 1;
         else
            patterndatasize = 2;

         AddString(outstring, "Tile(%dH x %dV)\r\n", patternwh, patternwh);

         if (rotatenum == 0)
         {

            Vdp2GetPlaneSize((Vdp2Regs->PLSZ & 0x300) >> 8, &planew, &planeh);
         }
         else
         {

            Vdp2GetPlaneSize((Vdp2Regs->PLSZ & 0x3000) >> 8, &planew, &planeh);
         }

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

         if (rotatenum == 0)
         {

            map[0] = Vdp2Regs->MPABRA & 0xFF;
            map[1] = Vdp2Regs->MPABRA >> 8;
            map[2] = Vdp2Regs->MPCDRA & 0xFF;
            map[3] = Vdp2Regs->MPCDRA >> 8;
            map[4] = Vdp2Regs->MPEFRA & 0xFF;
            map[5] = Vdp2Regs->MPEFRA >> 8;
            map[6] = Vdp2Regs->MPGHRA & 0xFF;
            map[7] = Vdp2Regs->MPGHRA >> 8;
            map[8] = Vdp2Regs->MPIJRA & 0xFF;
            map[9] = Vdp2Regs->MPIJRA >> 8;
            map[10] = Vdp2Regs->MPKLRA & 0xFF;
            map[11] = Vdp2Regs->MPKLRA >> 8;
            map[12] = Vdp2Regs->MPMNRA & 0xFF;
            map[13] = Vdp2Regs->MPMNRA >> 8;
            map[14] = Vdp2Regs->MPOPRA & 0xFF;
            map[15] = Vdp2Regs->MPOPRA >> 8;
            outstring = AddMapInfo(outstring, patternwh, Vdp2Regs->PNCR, (Vdp2Regs->PLSZ >> 8) & 0x3, (Vdp2Regs->MPOFR & 0x7) << 6, 16, map);
         }
         else
         {

            map[0] = Vdp2Regs->MPABRB & 0xFF;
            map[1] = Vdp2Regs->MPABRB >> 8;
            map[2] = Vdp2Regs->MPCDRB & 0xFF;
            map[3] = Vdp2Regs->MPCDRB >> 8;
            map[4] = Vdp2Regs->MPEFRB & 0xFF;
            map[5] = Vdp2Regs->MPEFRB >> 8;
            map[6] = Vdp2Regs->MPGHRB & 0xFF;
            map[7] = Vdp2Regs->MPGHRB >> 8;
            map[8] = Vdp2Regs->MPIJRB & 0xFF;
            map[9] = Vdp2Regs->MPIJRB >> 8;
            map[10] = Vdp2Regs->MPKLRB & 0xFF;
            map[11] = Vdp2Regs->MPKLRB >> 8;
            map[12] = Vdp2Regs->MPMNRB & 0xFF;
            map[13] = Vdp2Regs->MPMNRB >> 8;
            map[14] = Vdp2Regs->MPOPRB & 0xFF;
            map[15] = Vdp2Regs->MPOPRB >> 8;
            outstring = AddMapInfo(outstring, patternwh, Vdp2Regs->PNCR, (Vdp2Regs->PLSZ >> 12) & 0x3, (Vdp2Regs->MPOFR & 0x70) << 2, 16, map);
         }
      }


      outstring = AddWindowInfoString(outstring, Vdp2Regs->WCTLC, 0);




      AddString(outstring, "Color Ram Address Offset = %X\r\n", (Vdp2Regs->CRAOFB & 0x7) << 8);


      outstring = AddSpecialPriorityInfo(outstring, Vdp2Regs->SFPRMD >> 8);






      AddString(outstring, "Priority = %d\r\n", Vdp2Regs->PRIR & 0x7);


      outstring = AddColorCalcInfo(outstring, 0x0010, 0x0001, Vdp2Regs->CCRR & 0x1F, (Vdp2Regs->SFCCMD >> 8) & 0x3);


      outstring = AddColorOffsetInfo(outstring, 0x0010);

      AddString(outstring, "Special Color Calculation %d\r\n",(Vdp2Regs->SFCCMD>>8)&0x03);
   }
   else
   {

      *isenabled = 0;
   }
}
