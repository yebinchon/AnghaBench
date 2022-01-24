#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_10__ {int /*<<< orphan*/  (* SetPC ) (int) ;int /*<<< orphan*/  (* SetSR ) (int) ;int /*<<< orphan*/  (* SetAReg ) (int,int) ;int /*<<< orphan*/  (* SetDReg ) (int,int) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  lfo_step; int /*<<< orphan*/  lfo_counter; int /*<<< orphan*/  env_phase; int /*<<< orphan*/  env_target; int /*<<< orphan*/  env_step; int /*<<< orphan*/  env_counter; int /*<<< orphan*/  addr_counter; int /*<<< orphan*/  key; } ;
struct TYPE_8__ {int mem4mb; int dac18b; int mvol; int rbl; int mslc; int drga; int dgate; int ddir; int dexe; int dtlg; int mofull; int moemp; int miovf; int mifull; int miemp; int tima; int tactl; int timb; int tbctl; int timc; int tcctl; int scieb; int scipd; int scilv0; int scilv1; int scilv2; int mcieb; int mcipd; scalar_t__ stack; int /*<<< orphan*/  midi_out_cnt; int /*<<< orphan*/  midi_in_cnt; scalar_t__ midi_out_buf; scalar_t__ midi_in_buf; int /*<<< orphan*/  dmea; int /*<<< orphan*/  rbp; TYPE_4__* slot; } ;
struct TYPE_7__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ IOCheck_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_6__* M68K ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 scalar_t__ SoundRam ; 
 int /*<<< orphan*/  m68k_running ; 
 TYPE_3__ scsp ; 
 int* scsp_regcache ; 
 scalar_t__ scsp_thread_running ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,void*,int,int,int /*<<< orphan*/ *) ; 

int FUNC10(FILE *fp, int version, int size)
{
   int i, i2;
   u32 temp;
   u8 temp8;
   IOCheck_struct check = { 0, 0 };

   if (scsp_thread_running)
      FUNC1();

   // Read 68k registers first
   FUNC9(&check, (void *)&m68k_running, 1, 1, fp);
   for (i = 0; i < 8; i++)
   {
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      M68K->SetDReg(i, temp);
   }
   for (i = 0; i < 8; i++)
   {
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      M68K->SetAReg(i, temp);
   }
   FUNC9(&check, (void *)&temp, 4, 1, fp);
   M68K->SetSR(temp);
   FUNC9(&check, (void *)&temp, 4, 1, fp);
   M68K->SetPC(temp);

   // Now for the SCSP registers
   FUNC9(&check, (void *)scsp_regcache, 0x1000, 1, fp);

   // And sound RAM
   FUNC9(&check, (void *)SoundRam, 0x80000, 1, fp);

   // Break out slot registers into their respective fields
   for (i = 0; i < 32; i++)
   {
      for (i2 = 0; i2 < 0x18; i2 += 2)
         FUNC4(i<<5 | i2, scsp_regcache[(i<<5 | i2) >> 1]);
      // These are also called during writes, so they're not technically
      // necessary, but call them again anyway just to ensure everything's
      // up to date
      FUNC2(&scsp.slot[i]);
      FUNC3(&scsp.slot[i]);
   }

   if (version > 1)
   {
      // Read slot internal variables
      for (i = 0; i < 32; i++)
      {
         FUNC9(&check, (void *)&scsp.slot[i].key, 1, 1, fp);
         FUNC9(&check, (void *)&scsp.slot[i].addr_counter, 4, 1, fp);
         FUNC9(&check, (void *)&scsp.slot[i].env_counter, 4, 1, fp);
         FUNC9(&check, (void *)&scsp.slot[i].env_step, 4, 1, fp);
         FUNC9(&check, (void *)&scsp.slot[i].env_target, 4, 1, fp);
         FUNC9(&check, (void *)&scsp.slot[i].env_phase, 4, 1, fp);

         // Was enxt in scsp1; we don't use it, so just read and ignore
         FUNC9(&check, (void *)&temp8, 1, 1, fp);

         FUNC9(&check, (void *)&scsp.slot[i].lfo_counter, 4, 1, fp);
         FUNC9(&check, (void *)&scsp.slot[i].lfo_step, 4, 1, fp);
      }

      // Read main internal variables
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.mem4mb = temp;
      // This one isn't saved in the state file (though it's not used anyway)
      scsp.dac18b = (scsp_regcache[0x400>>1] >> 8) & 1;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.mvol = temp;

      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.rbl = temp;
      FUNC9(&check, (void *)&scsp.rbp, 4, 1, fp);

      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.mslc = temp;

      FUNC9(&check, (void *)&scsp.dmea, 4, 1, fp);
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.drga = temp;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.dgate = temp>>6 & 1;
      scsp.ddir  = temp>>5 & 1;
      scsp.dexe  = temp>>4 & 1;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.dtlg = temp;

      FUNC9(&check, (void *)scsp.midi_in_buf, 1, 4, fp);
      FUNC9(&check, (void *)scsp.midi_out_buf, 1, 4, fp);
      FUNC9(&check, (void *)&scsp.midi_in_cnt, 1, 1, fp);
      FUNC9(&check, (void *)&scsp.midi_out_cnt, 1, 1, fp);
      FUNC9(&check, (void *)&temp8, 1, 1, fp);
      scsp.mofull = temp8>>4 & 1;
      scsp.moemp  = temp8>>3 & 1;
      scsp.miovf  = temp8>>2 & 1;
      scsp.mifull = temp8>>1 & 1;
      scsp.miemp  = temp8>>0 & 1;

      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.tima = temp;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.tactl = temp;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.timb = temp;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.tbctl = temp;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.timc = temp;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.tcctl = temp;

      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.scieb = temp;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.scipd = temp;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.scilv0 = temp;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.scilv1 = temp;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.scilv2 = temp;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.mcieb = temp;
      FUNC9(&check, (void *)&temp, 4, 1, fp);
      scsp.mcipd = temp;

      FUNC9(&check, (void *)scsp.stack, 4, 32 * 2, fp);
   }

   if (scsp_thread_running)
      FUNC0();

   return size;
}