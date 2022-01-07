
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct Scsp {TYPE_4__* slots; } ;
typedef int s16 ;
struct TYPE_15__ {size_t isel; int efpan; int efsdl; int dipan; int imxl; int disdl; int sa; } ;
struct TYPE_14__ {int output; } ;
struct TYPE_17__ {TYPE_2__ regs; TYPE_1__ state; } ;
struct TYPE_16__ {int rbp; int rbl; int* exts; int* efreg; scalar_t__* mixs; int mdec_ct; } ;
struct TYPE_13__ {scalar_t__ debug_mode; } ;


 int ScspDspExec (TYPE_3__*,int,int ) ;
 int SoundRam ;
 int get_panning (int ,int*,int*) ;
 int get_sdl_shift (int ) ;
 TYPE_11__ new_scsp ;
 int op1 (TYPE_4__*) ;
 int op2 (TYPE_4__*,struct Scsp*) ;
 int op3 (TYPE_4__*) ;
 int op4 (TYPE_4__*) ;
 int op5 (TYPE_4__*) ;
 int op6 (TYPE_4__*) ;
 int op7 (TYPE_4__*,struct Scsp*) ;
 scalar_t__ scsp_debug_instrument_check_is_muted (int ) ;
 TYPE_3__ scsp_dsp ;

void generate_sample(struct Scsp * s, int rbp, int rbl, s16 * out_l, s16* out_r, int mvol, s16 cd_in_l, s16 cd_in_r)
{
   int step_num = 0;
   int i = 0;
   int mvol_shift = 0;



   for (step_num = 0; step_num < 32; step_num++)
   {
      int last_step = (step_num - 6) & 0x1f;
      int debug_muted = 0;

      op1(&s->slots[step_num]);
      op2(&s->slots[(step_num - 1) & 0x1f],s);
      op3(&s->slots[(step_num - 2) & 0x1f]);
      op4(&s->slots[(step_num - 3) & 0x1f]);
      op5(&s->slots[(step_num - 4) & 0x1f]);
      op6(&s->slots[(step_num - 5) & 0x1f]);
      op7(&s->slots[(step_num - 6) & 0x1f],s);

      if (new_scsp.debug_mode)
      {
         if (scsp_debug_instrument_check_is_muted(s->slots[last_step].regs.sa))
            debug_muted = 1;
      }

      if (!debug_muted)
      {
         int disdl = get_sdl_shift(s->slots[last_step].regs.disdl);

         s16 disdl_applied = (s->slots[last_step].state.output >> disdl);

         s16 mixs_input = s->slots[last_step].state.output >>
            get_sdl_shift(s->slots[last_step].regs.imxl);

         int pan_val_l = 0, pan_val_r = 0;

         get_panning(s->slots[last_step].regs.dipan, &pan_val_l, &pan_val_r);

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
      ScspDspExec(&scsp_dsp, i, SoundRam);

   scsp_dsp.mdec_ct--;

   for (i = 0; i < 16; i++)
      scsp_dsp.mixs[i] = 0;

   for (i = 0; i < 18; i++)
   {
      int efsdl = get_sdl_shift(s->slots[i].regs.efsdl);

      s16 efsdl_applied = (scsp_dsp.efreg[i] >> efsdl);

      int pan_val_l = 0, pan_val_r = 0;
      s16 panned_l = 0, panned_r = 0;

      if (i == 16)
         efsdl_applied = scsp_dsp.exts[0] >> efsdl;

      if (i == 17)
         efsdl_applied = scsp_dsp.exts[1] >> efsdl;


      get_panning(s->slots[i].regs.efpan, &pan_val_l, &pan_val_r);

      panned_l = (efsdl_applied >> pan_val_l) >> 2;
      panned_r = (efsdl_applied >> pan_val_r) >> 2;

      *out_l = *out_l + panned_l;
      *out_r = *out_r + panned_r;
   }

   mvol_shift = 0xf - mvol;

   *out_l = *out_l >> mvol_shift;
   *out_r = *out_r >> mvol_shift;
}
