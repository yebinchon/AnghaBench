
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CMDCTRL; int CMDSIZE; int CMDPMOD; int CMDCOLR; int CMDSRCA; } ;
typedef TYPE_1__ vdp1cmd_struct ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int CRAOFB; } ;


 int CheckEndcode (int,int,int*) ;
 void* ColorRamGetColor (int) ;
 int DoEndcode (int,int*,int**,int,int,int,int) ;
 void* SAT2YAB1 (int,int) ;
 int T1ReadByte (int ,int) ;
 int T1ReadWord (int ,int) ;
 int Vdp1DebugGetCommandNumberAddr (int) ;
 int Vdp1Ram ;
 int Vdp1ReadCommand (TYPE_1__*,int,int ) ;
 TYPE_2__* Vdp2Regs ;
 scalar_t__ malloc (int) ;

u32 *Vdp1DebugTexture(u32 number, int *w, int *h)
{
   u16 command;
   vdp1cmd_struct cmd;
   u32 addr;
   u32 *texture;
   u32 charAddr;
   u32 dot;
   u8 SPD;
   u32 alpha;
   u32 *textdata;
   int isendcode=0;
   int code=0;
   int ret;

   if ((addr = Vdp1DebugGetCommandNumberAddr(number)) == 0xFFFFFFFF)
      return ((void*)0);

   command = T1ReadWord(Vdp1Ram, addr);

   if (command & 0x8000)

      return ((void*)0);

   if (command & 0x4000)

      return ((void*)0);

   Vdp1ReadCommand(&cmd, addr, Vdp1Ram);

   switch (cmd.CMDCTRL & 0x000F)
   {
      case 0:
      case 1:
      case 2:
      case 3:
         w[0] = (cmd.CMDSIZE & 0x3F00) >> 5;
         h[0] = cmd.CMDSIZE & 0xFF;

         if ((texture = (u32 *)malloc(sizeof(u32) * w[0] * h[0])) == ((void*)0))
            return ((void*)0);

         if (!(cmd.CMDPMOD & 0x80))
         {
            isendcode = 1;
            code = 0;
         }
         else
            isendcode = 0;
         break;
      case 4:
      case 5:
      case 6:
      case 7:

         w[0] = 1;
         h[0] = 1;
         if ((texture = (u32 *)malloc(sizeof(u32))) == ((void*)0))
            return ((void*)0);

         if (cmd.CMDCOLR & 0x8000)
            texture[0] = SAT2YAB1(0xFF, cmd.CMDCOLR);
         else
            texture[0] = ColorRamGetColor(cmd.CMDCOLR);

         return texture;
      case 8:
      case 9:
      case 10:
      case 11:
         return ((void*)0);
      default:
         return ((void*)0);
   }

   charAddr = cmd.CMDSRCA * 8;
   SPD = ((cmd.CMDPMOD & 0x40) != 0);
   alpha = 0xFF;
   textdata = texture;

   switch((cmd.CMDPMOD >> 3) & 0x7)
   {
      case 0:
      {

         u32 colorBank = cmd.CMDCOLR;
         u32 colorOffset = (Vdp2Regs->CRAOFB & 0x70) << 4;
         u16 i;

         for(i = 0;i < h[0];i++)
         {
            u16 j;
            j = 0;
            while(j < w[0])
            {
               dot = T1ReadByte(Vdp1Ram, charAddr & 0x7FFFF);


               if (isendcode && (ret = CheckEndcode(dot >> 4, 0xF, &code)) > 0)
               {
                  if (DoEndcode(ret, &charAddr, &textdata, w[0], j, 0, 4))
                     break;
               }
               else
               {
                  if (((dot >> 4) == 0) && !SPD) *textdata++ = 0;
                  else *textdata++ = ColorRamGetColor(((dot >> 4) | colorBank) + colorOffset);
               }

               j += 1;


               if (isendcode && (ret = CheckEndcode(dot & 0xF, 0xF, &code)) > 0)
               {
                  if (DoEndcode(ret, &charAddr, &textdata, w[0], j, 1, 4))
                     break;
               }
               else
               {
                  if (((dot & 0xF) == 0) && !SPD) *textdata++ = 0;
                  else *textdata++ = ColorRamGetColor(((dot & 0xF) | colorBank) + colorOffset);
               }

               j += 1;
               charAddr += 1;
            }
         }
         break;
      }
      case 1:
      {

         u32 temp;
         u32 colorLut = cmd.CMDCOLR * 8;
         u16 i;

         for(i = 0;i < h[0];i++)
         {
            u16 j;
            j = 0;
            while(j < w[0])
            {
               dot = T1ReadByte(Vdp1Ram, charAddr & 0x7FFFF);

               if (isendcode && (ret = CheckEndcode(dot >> 4, 0xF, &code)) > 0)
               {
                  if (DoEndcode(ret, &charAddr, &textdata, w[0], j, 0, 4))
                     break;
               }
               else
               {
                  if (((dot >> 4) == 0) && !SPD)
                     *textdata++ = 0;
                  else
                  {
                     temp = T1ReadWord(Vdp1Ram, ((dot >> 4) * 2 + colorLut) & 0x7FFFF);
                     if (temp & 0x8000)
                        *textdata++ = SAT2YAB1(0xFF, temp);
                     else
                        *textdata++ = ColorRamGetColor(temp);
                  }
               }

               j += 1;

               if (isendcode && (ret = CheckEndcode(dot & 0xF, 0xF, &code)) > 0)
               {
                  if (DoEndcode(ret, &charAddr, &textdata, w[0], j, 1, 4))
                     break;
               }
               else
               {
                  if (((dot & 0xF) == 0) && !SPD)
                     *textdata++ = 0;
                  else
                  {
                     temp = T1ReadWord(Vdp1Ram, ((dot & 0xF) * 2 + colorLut) & 0x7FFFF);
                     if (temp & 0x8000)
                        *textdata++ = SAT2YAB1(0xFF, temp);
                     else
                        *textdata++ = ColorRamGetColor(temp);
                  }
               }

               j += 1;

               charAddr += 1;
            }
         }
         break;
      }
      case 2:
      {

         u32 colorBank = cmd.CMDCOLR;
         u32 colorOffset = (Vdp2Regs->CRAOFB & 0x70) << 4;

         u16 i, j;

         for(i = 0;i < h[0];i++)
         {
            for(j = 0;j < w[0];j++)
            {
               dot = T1ReadByte(Vdp1Ram, charAddr & 0x7FFFF) & 0x3F;
               charAddr++;

               if ((dot == 0) && !SPD) *textdata++ = 0;
               else *textdata++ = ColorRamGetColor((dot | colorBank) + colorOffset);
            }
         }
         break;
      }
      case 3:
      {

         u32 colorBank = cmd.CMDCOLR;
         u32 colorOffset = (Vdp2Regs->CRAOFB & 0x70) << 4;
         u16 i, j;

         for(i = 0;i < h[0];i++)
         {
            for(j = 0;j < w[0];j++)
            {
               dot = T1ReadByte(Vdp1Ram, charAddr & 0x7FFFF) & 0x7F;
               charAddr++;

               if ((dot == 0) && !SPD) *textdata++ = 0;
               else *textdata++ = ColorRamGetColor((dot | colorBank) + colorOffset);
            }
         }
         break;
      }
      case 4:
      {

         u32 colorBank = cmd.CMDCOLR;
         u32 colorOffset = (Vdp2Regs->CRAOFB & 0x70) << 4;
         u16 i, j;

         for(i = 0;i < h[0];i++)
         {
            for(j = 0;j < w[0];j++)
            {
               dot = T1ReadByte(Vdp1Ram, charAddr & 0x7FFFF);
               charAddr++;

               if ((dot == 0) && !SPD) *textdata++ = 0;
               else *textdata++ = ColorRamGetColor((dot | colorBank) + colorOffset);
            }
         }
         break;
      }
      case 5:
      {

         u16 i, j;

         for(i = 0;i < h[0];i++)
         {
            for(j = 0;j < w[0];j++)
            {
               dot = T1ReadWord(Vdp1Ram, charAddr & 0x7FFFF);

               if (isendcode && (ret = CheckEndcode(dot, 0x7FFF, &code)) > 0)
               {
                  if (DoEndcode(ret, &charAddr, &textdata, w[0], j, 0, 16))
                     break;
               }
               else
               {

                  if (!(dot & 0x8000) && !SPD) *textdata++ = 0;
                  else *textdata++ = SAT2YAB1(0xFF, dot);
               }

               charAddr += 2;
            }
         }
         break;
      }
      default:
         break;
   }

   return texture;
}
