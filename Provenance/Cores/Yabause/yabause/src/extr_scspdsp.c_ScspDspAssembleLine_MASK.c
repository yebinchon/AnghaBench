#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int twt; int xsel; int iwt; int table; int mwt; int mrd; int ewt; int adrl; int frcl; int yrl; int negb; int zero; int bsel; int nofl; int adreb; void* masa; void* coef; void* shift; void* ewa; void* iwa; void* ira; void* ysel; void* twa; void* tra; } ;
union ScspDspInstruction {scalar_t__ all; TYPE_1__ part; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ u64 ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 char* FUNC1 (char*,char*) ; 

u64 FUNC2(char* line)
{
   union ScspDspInstruction instruction = { 0 };

   char* temp = NULL;

   if ((temp = FUNC1(line, "tra")))
   {
      instruction.part.tra = FUNC0(temp);
   }

   if (FUNC1(line, "twt"))
   {
      instruction.part.twt = 1;
   }

   if ((temp = FUNC1(line, "twa")))
   {
      instruction.part.twa = FUNC0(temp);
   }

   if (FUNC1(line, "xsel"))
   {
      instruction.part.xsel = 1;
   }

   if ((temp = FUNC1(line, "ysel")))
   {
      instruction.part.ysel = FUNC0(temp);
   }

   if ((temp = FUNC1(line, "ira")))
   {
      instruction.part.ira = FUNC0(temp);
   }

   if (FUNC1(line, "iwt"))
   {
      instruction.part.iwt = 1;
   }

   if ((temp = FUNC1(line, "iwa")))
   {
      instruction.part.iwa = FUNC0(temp);
   }

   if (FUNC1(line, "table"))
   {
      instruction.part.table = 1;
   }

   if (FUNC1(line, "mwt"))
   {
      instruction.part.mwt = 1;
   }

   if (FUNC1(line, "mrd"))
   {
      instruction.part.mrd = 1;
   }

   if (FUNC1(line, "ewt"))
   {
      instruction.part.ewt = 1;
   }

   if ((temp = FUNC1(line, "ewa")))
   {
      instruction.part.ewa = FUNC0(temp);
   }

   if (FUNC1(line, "adrl"))
   {
      instruction.part.adrl = 1;
   }

   if (FUNC1(line, "frcl"))
   {
      instruction.part.frcl = 1;
   }

   if ((temp = FUNC1(line, "shift")))
   {
      instruction.part.shift = FUNC0(temp);
   }

   if (FUNC1(line, "yrl"))
   {
      instruction.part.yrl = 1;
   }

   if (FUNC1(line, "negb"))
   {
      instruction.part.negb = 1;
   }

   if (FUNC1(line, "zero"))
   {
      instruction.part.zero = 1;
   }

   if (FUNC1(line, "bsel"))
   {
      instruction.part.bsel = 1;
   }

   if (FUNC1(line, "nofl"))
   {
      instruction.part.nofl = 1;
   }

   if ((temp = FUNC1(line, "coef")))
   {
      instruction.part.coef = FUNC0(temp);
   }

   if ((temp = FUNC1(line, "masa")))
   {
      instruction.part.masa = FUNC0(temp);
   }

   if (FUNC1(line, "adreb"))
   {
      instruction.part.adreb = 1;
   }

   if (FUNC1(line, "nxadr"))
   {
      instruction.part.adreb = 1;
   }

   if (FUNC1(line, "nop"))
   {
      instruction.all = 0;
   }

   return instruction.all;
}