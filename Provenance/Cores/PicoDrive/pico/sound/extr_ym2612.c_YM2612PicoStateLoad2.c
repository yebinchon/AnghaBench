
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int magic; int TAT; int TBT; int state_phase; int keyon_field; int* block_fnum; int* block_fnum_sl3; int volume; int lfo_ampm; int lfo_cnt; int eg_timer; int eg_cnt; int addr_A1; int status; int address; } ;
typedef TYPE_6__ ym_save_addon_slot ;
typedef TYPE_6__ ym_save_addon2 ;
typedef TYPE_6__ ym_save_addon ;
typedef int sa2 ;
typedef int sa ;
typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_11__ {int* block_fnum; int* kcode; int* fc; } ;
struct TYPE_12__ {int status; int address; } ;
struct TYPE_13__ {TYPE_1__ SL3; int lfo_cnt; int eg_timer; int eg_cnt; TYPE_2__ ST; } ;
struct TYPE_17__ {unsigned char* REGS; TYPE_3__ OPN; TYPE_5__* CH; int addr_A1; } ;
struct TYPE_15__ {int block_fnum; int kcode; int fc; TYPE_4__* SLOT; } ;
struct TYPE_14__ {int state; int phase; int key; int ksr; int Incr; int volume; } ;


 size_t SLOT1 ;
 int* fn_table ;
 int g_lfo_ampm ;
 int memcpy (TYPE_6__*,unsigned char*,int) ;
 int* opn_fktable ;
 TYPE_9__ ym2612 ;

int YM2612PicoStateLoad2(int *tat, int *tbt)
{
 ym_save_addon_slot ss;
 ym_save_addon2 sa2;
 ym_save_addon sa;
 unsigned char *ptr;
 UINT32 fn;
 UINT8 blk;
 int c, s;

 ptr = &ym2612.REGS[0x100];
 memcpy(&sa, ptr, sizeof(sa));
 if (sa.magic != 0x41534d59) return -1;

 ptr = &ym2612.REGS[0];
 memcpy(&sa2, ptr, sizeof(sa2));

 ym2612.OPN.ST.address = sa.address;
 ym2612.OPN.ST.status = sa.status;
 ym2612.addr_A1 = sa.addr_A1;
 ym2612.OPN.eg_cnt = sa.eg_cnt;
 ym2612.OPN.eg_timer = sa.eg_timer;
 ym2612.OPN.lfo_cnt = sa.lfo_cnt;
 g_lfo_ampm = sa.lfo_ampm;
 if (tat != ((void*)0)) *tat = sa.TAT;
 if (tbt != ((void*)0)) *tbt = sa.TBT;


 ptr = &ym2612.REGS[0x0b8];
 for (c = 0; c < 3; c++)
 {
  for (s = 0; s < 4; s++) {
   memcpy(&ss, ptr, 6);
   ym2612.CH[c].SLOT[s].state = ss.state_phase >> 29;
   ym2612.CH[c].SLOT[s].phase = ss.state_phase << 3;
   ym2612.CH[c].SLOT[s].volume = ss.volume;
   ym2612.CH[c].SLOT[s].key = (sa.keyon_field & (1 << (c*4 + s))) ? 1 : 0;
   ym2612.CH[c].SLOT[s].ksr = (UINT8)-1;
   ptr += 6;
  }
  ym2612.CH[c].SLOT[SLOT1].Incr=-1;
  ym2612.CH[c].block_fnum = sa2.block_fnum[c];
  fn = ym2612.CH[c].block_fnum & 0x7ff;
  blk = ym2612.CH[c].block_fnum >> 11;
  ym2612.CH[c].kcode= (blk<<2) | opn_fktable[fn >> 7];
  ym2612.CH[c].fc = fn_table[fn*2]>>(7-blk);
 }

 ptr = &ym2612.REGS[0x1b8];
 for (; c < 6; c++)
 {
  for (s = 0; s < 4; s++) {
   memcpy(&ss, ptr, 6);
   ym2612.CH[c].SLOT[s].state = ss.state_phase >> 29;
   ym2612.CH[c].SLOT[s].phase = ss.state_phase << 3;
   ym2612.CH[c].SLOT[s].volume = ss.volume;
   ym2612.CH[c].SLOT[s].key = (sa.keyon_field & (1 << (c*4 + s))) ? 1 : 0;
   ym2612.CH[c].SLOT[s].ksr = (UINT8)-1;
   ptr += 6;
  }
  ym2612.CH[c].SLOT[SLOT1].Incr=-1;
  ym2612.CH[c].block_fnum = sa2.block_fnum[c];
  fn = ym2612.CH[c].block_fnum & 0x7ff;
  blk = ym2612.CH[c].block_fnum >> 11;
  ym2612.CH[c].kcode= (blk<<2) | opn_fktable[fn >> 7];
  ym2612.CH[c].fc = fn_table[fn*2]>>(7-blk);
 }
 for (c = 0; c < 3; c++)
 {
  ym2612.OPN.SL3.block_fnum[c] = sa2.block_fnum_sl3[c];
  fn = ym2612.OPN.SL3.block_fnum[c] & 0x7ff;
  blk = ym2612.OPN.SL3.block_fnum[c] >> 11;
  ym2612.OPN.SL3.kcode[c]= (blk<<2) | opn_fktable[fn >> 7];
  ym2612.OPN.SL3.fc[c] = fn_table[fn*2]>>(7-blk);
 }

 return 0;
}
