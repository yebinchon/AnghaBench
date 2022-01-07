
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_11__ {int pack; int vol_out1; int vol_out2; int vol_out3; int vol_out4; int algo; int incr1; int incr2; int incr3; int incr4; int phase4; TYPE_2__* CH; int phase3; int phase2; int phase1; int mem; int op1_out; int eg_timer; int eg_cnt; scalar_t__ lfo_inc; int lfo_cnt; } ;
struct TYPE_7__ {int eg_timer; int eg_cnt; int lfo_cnt; } ;
struct TYPE_10__ {int slot_mask; TYPE_1__ OPN; TYPE_2__* CH; } ;
struct TYPE_9__ {int tl; int* DT; int mul; int Incr; int state; int phase; scalar_t__ volume; } ;
struct TYPE_8__ {int AMmasks; int ams; int FB; int ALGO; int pms; int block_fnum; TYPE_3__* SLOT; int mem_value; int op1_out; } ;
typedef int INT32 ;


 size_t SLOT1 ;
 size_t SLOT2 ;
 size_t SLOT3 ;
 size_t SLOT4 ;
 int chan_render_loop (TYPE_5__*,int*,int) ;
 TYPE_5__ crct ;
 int* fn_table ;
 int g_lfo_ampm ;
 int* lfo_pm_table ;
 int* opn_fktable ;
 TYPE_4__ ym2612 ;

__attribute__((used)) static int chan_render(int *buffer, int length, int c, UINT32 flags)
{
 crct.CH = &ym2612.CH[c];
 crct.mem = crct.CH->mem_value;
 crct.lfo_cnt = ym2612.OPN.lfo_cnt;

 flags &= 0x35;

 if (crct.lfo_inc) {
  flags |= 8;
  flags |= g_lfo_ampm << 16;
  flags |= crct.CH->AMmasks << 8;
  if (crct.CH->ams == 8)
       flags &= ~0xf00;
  else flags |= (crct.CH->ams&3)<<6;
 }
 flags |= (crct.CH->FB&0xf)<<12;
 crct.pack = flags;

 crct.eg_cnt = ym2612.OPN.eg_cnt;
 crct.eg_timer = ym2612.OPN.eg_timer;


 crct.phase1 = crct.CH->SLOT[SLOT1].phase;
 crct.phase2 = crct.CH->SLOT[SLOT2].phase;
 crct.phase3 = crct.CH->SLOT[SLOT3].phase;
 crct.phase4 = crct.CH->SLOT[SLOT4].phase;


 crct.vol_out1 = crct.CH->SLOT[SLOT1].tl + ((UINT32)crct.CH->SLOT[SLOT1].volume);
 crct.vol_out2 = crct.CH->SLOT[SLOT2].tl + ((UINT32)crct.CH->SLOT[SLOT2].volume);
 crct.vol_out3 = crct.CH->SLOT[SLOT3].tl + ((UINT32)crct.CH->SLOT[SLOT3].volume);
 crct.vol_out4 = crct.CH->SLOT[SLOT4].tl + ((UINT32)crct.CH->SLOT[SLOT4].volume);

 crct.op1_out = crct.CH->op1_out;
 crct.algo = crct.CH->ALGO & 7;

 if(crct.CH->pms)
 {

  UINT32 block_fnum = crct.CH->block_fnum;

  UINT32 fnum_lfo = ((block_fnum & 0x7f0) >> 4) * 32 * 8;
  INT32 lfo_fn_table_index_offset = lfo_pm_table[ fnum_lfo + crct.CH->pms + ((crct.pack>>16)&0xff) ];

  if (lfo_fn_table_index_offset)
  {
   UINT8 blk;
   UINT32 fn;
   int kc,fc;

   blk = block_fnum >> 11;
   block_fnum = block_fnum*2 + lfo_fn_table_index_offset;

   fn = block_fnum & 0xfff;


   kc = (blk<<2) | opn_fktable[fn >> 8];

   fc = fn_table[fn]>>(7-blk);

   crct.incr1 = ((fc+crct.CH->SLOT[SLOT1].DT[kc])*crct.CH->SLOT[SLOT1].mul) >> 1;
   crct.incr2 = ((fc+crct.CH->SLOT[SLOT2].DT[kc])*crct.CH->SLOT[SLOT2].mul) >> 1;
   crct.incr3 = ((fc+crct.CH->SLOT[SLOT3].DT[kc])*crct.CH->SLOT[SLOT3].mul) >> 1;
   crct.incr4 = ((fc+crct.CH->SLOT[SLOT4].DT[kc])*crct.CH->SLOT[SLOT4].mul) >> 1;
  }
  else
  {
   crct.incr1 = crct.CH->SLOT[SLOT1].Incr;
   crct.incr2 = crct.CH->SLOT[SLOT2].Incr;
   crct.incr3 = crct.CH->SLOT[SLOT3].Incr;
   crct.incr4 = crct.CH->SLOT[SLOT4].Incr;
  }
 }
 else
 {
  crct.incr1 = crct.CH->SLOT[SLOT1].Incr;
  crct.incr2 = crct.CH->SLOT[SLOT2].Incr;
  crct.incr3 = crct.CH->SLOT[SLOT3].Incr;
  crct.incr4 = crct.CH->SLOT[SLOT4].Incr;
 }

 chan_render_loop(&crct, buffer, length);

 crct.CH->op1_out = crct.op1_out;
 crct.CH->mem_value = crct.mem;
 if (crct.CH->SLOT[SLOT1].state | crct.CH->SLOT[SLOT2].state | crct.CH->SLOT[SLOT3].state | crct.CH->SLOT[SLOT4].state)
 {
  crct.CH->SLOT[SLOT1].phase = crct.phase1;
  crct.CH->SLOT[SLOT2].phase = crct.phase2;
  crct.CH->SLOT[SLOT3].phase = crct.phase3;
  crct.CH->SLOT[SLOT4].phase = crct.phase4;
 }
 else
  ym2612.slot_mask &= ~(0xf << (c*4));

 return (crct.algo & 8) >> 3;
}
