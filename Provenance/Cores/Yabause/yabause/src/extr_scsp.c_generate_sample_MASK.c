#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct Scsp {TYPE_4__* slots; } ;
typedef  int s16 ;
struct TYPE_15__ {size_t isel; int /*<<< orphan*/  efpan; int /*<<< orphan*/  efsdl; int /*<<< orphan*/  dipan; int /*<<< orphan*/  imxl; int /*<<< orphan*/  disdl; int /*<<< orphan*/  sa; } ;
struct TYPE_14__ {int output; } ;
struct TYPE_17__ {TYPE_2__ regs; TYPE_1__ state; } ;
struct TYPE_16__ {int rbp; int rbl; int* exts; int* efreg; scalar_t__* mixs; int /*<<< orphan*/  mdec_ct; } ;
struct TYPE_13__ {scalar_t__ debug_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SoundRam ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_11__ new_scsp ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct Scsp*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,struct Scsp*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_3__ scsp_dsp ; 

void FUNC11(struct Scsp * s, int rbp, int rbl, s16 * out_l, s16* out_r, int mvol, s16 cd_in_l, s16 cd_in_r)
{
   int step_num = 0;
   int i = 0;
   int mvol_shift = 0;

   //run 32 steps to generate 1 full sample (512 clock cycles at 22579200hz)
   //7 operations happen simultaneously on different channels due to pipelining
   for (step_num = 0; step_num < 32; step_num++)
   {
      int last_step = (step_num - 6) & 0x1f;
      int debug_muted = 0;

      FUNC3(&s->slots[step_num]);//phase, pitch lfo
      FUNC4(&s->slots[(step_num - 1) & 0x1f],s);//address pointer, modulation data read
      FUNC5(&s->slots[(step_num - 2) & 0x1f]);//waveform dram read
      FUNC6(&s->slots[(step_num - 3) & 0x1f]);//interpolation, eg, amplitude lfo
      FUNC7(&s->slots[(step_num - 4) & 0x1f]);//level calc 1
      FUNC8(&s->slots[(step_num - 5) & 0x1f]);//level calc 2
      FUNC9(&s->slots[(step_num - 6) & 0x1f],s);//sound stack write

      if (new_scsp.debug_mode)
      {
         if (FUNC10(s->slots[last_step].regs.sa))
            debug_muted = 1;
      }

      if (!debug_muted)
      {
         int disdl = FUNC2(s->slots[last_step].regs.disdl);

         s16 disdl_applied = (s->slots[last_step].state.output >> disdl);

         s16 mixs_input = s->slots[last_step].state.output >>
            FUNC2(s->slots[last_step].regs.imxl);

         int pan_val_l = 0, pan_val_r = 0;

         FUNC1(s->slots[last_step].regs.dipan, &pan_val_l, &pan_val_r);

         *out_l = *out_l + ((disdl_applied >> pan_val_l) >> 2);
         *out_r = *out_r + ((disdl_applied >> pan_val_r) >> 2);

         scsp_dsp.mixs[s->slots[last_step].regs.isel] += mixs_input << 4;
      }
   }

   scsp_dsp.rbp = rbp;
   scsp_dsp.rbl = rbl;

   scsp_dsp.exts[0] = cd_in_l;
   scsp_dsp.exts[1] = cd_in_r;

   for (i = 0; i < 128; i++)
      FUNC0(&scsp_dsp, i, SoundRam);

   scsp_dsp.mdec_ct--;

   for (i = 0; i < 16; i++)
      scsp_dsp.mixs[i] = 0;

   for (i = 0; i < 18; i++)//16,17 are exts0/1
   {
      int efsdl = FUNC2(s->slots[i].regs.efsdl);

      s16 efsdl_applied = (scsp_dsp.efreg[i] >> efsdl);

      int pan_val_l = 0, pan_val_r = 0;
      s16 panned_l = 0, panned_r = 0;

      if (i == 16)
         efsdl_applied = scsp_dsp.exts[0] >> efsdl;

      if (i == 17)
         efsdl_applied = scsp_dsp.exts[1] >> efsdl;


      FUNC1(s->slots[i].regs.efpan, &pan_val_l, &pan_val_r);

      panned_l = (efsdl_applied >> pan_val_l) >> 2;
      panned_r = (efsdl_applied >> pan_val_r) >> 2;

      *out_l = *out_l + panned_l;
      *out_r = *out_r + panned_r;
   }

   mvol_shift = 0xf - mvol;

   *out_l = *out_l >> mvol_shift;
   *out_r = *out_r >> mvol_shift;
}