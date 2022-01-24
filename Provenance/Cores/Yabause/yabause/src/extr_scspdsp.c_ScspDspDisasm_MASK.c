#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int coef; int masa; int ewa; int shift; int ysel; int ira; int iwa; int tra; int twa; int unknown3; scalar_t__ unknown2; scalar_t__ unknown; scalar_t__ twt; scalar_t__ iwt; scalar_t__ xsel; scalar_t__ bsel; scalar_t__ zero; scalar_t__ negb; scalar_t__ yrl; scalar_t__ frcl; scalar_t__ adrl; scalar_t__ ewt; scalar_t__ mrd; scalar_t__ mwt; scalar_t__ table; scalar_t__ nxadr; scalar_t__ adreb; scalar_t__ nofl; } ;
union ScspDspInstruction {scalar_t__ all; TYPE_1__ part; } ;
typedef  size_t u8 ;
struct TYPE_4__ {scalar_t__* mpro; } ;

/* Variables and functions */
 TYPE_2__ scsp_dsp ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(u8 addr, char *outstring)
{
   union ScspDspInstruction instruction;

   instruction.all = scsp_dsp.mpro[addr];

   FUNC0(outstring, "%02X: ", addr);
   outstring += FUNC1(outstring);

   if (instruction.all == 0)
   {
      FUNC0(outstring, "nop ");
      outstring += FUNC1(outstring);
      return;
   }

   if (instruction.part.nofl)
   {
      FUNC0(outstring, "nofl ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.coef)
   {
      FUNC0(outstring, "coef %02X ", (unsigned int)(instruction.part.coef & 0x3F));
      outstring += FUNC1(outstring);
   }

   if (instruction.part.masa)
   {
      FUNC0(outstring, "masa %02X ", (unsigned int)(instruction.part.masa & 0x1F));
      outstring += FUNC1(outstring);
   }

   if (instruction.part.adreb)
   {
      FUNC0(outstring, "adreb ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.nxadr)
   {
      FUNC0(outstring, "nxadr ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.table)
   {
      FUNC0(outstring, "table ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.mwt)
   {
      FUNC0(outstring, "mwt ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.mrd)
   {
      FUNC0(outstring, "mrd ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.ewt)
   {
      FUNC0(outstring, "ewt ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.ewa)
   {
      FUNC0(outstring, "ewa %01X ", (unsigned int)(instruction.part.ewa & 0xf));
      outstring += FUNC1(outstring);
   }

   if (instruction.part.adrl)
   {
      FUNC0(outstring, "adrl ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.frcl)
   {
      FUNC0(outstring, "frcl ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.shift)
   {
      FUNC0(outstring, "shift %d ", (int)(instruction.part.shift & 3));
      outstring += FUNC1(outstring);
   }

   if (instruction.part.yrl)
   {
      FUNC0(outstring, "yrl ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.negb)
   {
      FUNC0(outstring, "negb ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.zero)
   {
      FUNC0(outstring, "zero ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.bsel)
   {
      FUNC0(outstring, "bsel ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.xsel)
   {
      FUNC0(outstring, "xsel ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.ysel)
   {
      FUNC0(outstring, "ysel %d ", (int)(instruction.part.ysel & 3));
      outstring += FUNC1(outstring);
   }

   if (instruction.part.ira)
   {
      FUNC0(outstring, "ira %02X ", (int)(instruction.part.ira & 0x3F));
      outstring += FUNC1(outstring);
   }

   if (instruction.part.iwt)
   {
      FUNC0(outstring, "iwt ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.iwa)
   {
      FUNC0(outstring, "iwa %02X ", (unsigned int)(instruction.part.iwa & 0x1F));
      outstring += FUNC1(outstring);
   }

   if (instruction.part.tra)
   {
      FUNC0(outstring, "tra %02X ", (unsigned int)(instruction.part.tra & 0x7F));
      outstring += FUNC1(outstring);
   }

   if (instruction.part.twt)
   {
      FUNC0(outstring, "twt ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.twa)
   {
      FUNC0(outstring, "twa %02X ", (unsigned int)(instruction.part.twa & 0x7F));
      outstring += FUNC1(outstring);
   }

   if (instruction.part.unknown)
   {
      FUNC0(outstring, "unknown ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.unknown2)
   {
      FUNC0(outstring, "unknown2 ");
      outstring += FUNC1(outstring);
   }

   if (instruction.part.unknown3)
   {
      FUNC0(outstring, "unknown3 %d", (int)(instruction.part.unknown3 & 3));
      outstring += FUNC1(outstring);
   }
}