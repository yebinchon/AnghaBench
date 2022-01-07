
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_10__ {int (* SetPC ) (int) ;int (* SetSR ) (int) ;int (* SetAReg ) (int,int) ;int (* SetDReg ) (int,int) ;} ;
struct TYPE_9__ {int lfo_step; int lfo_counter; int env_phase; int env_target; int env_step; int env_counter; int addr_counter; int key; } ;
struct TYPE_8__ {int mem4mb; int dac18b; int mvol; int rbl; int mslc; int drga; int dgate; int ddir; int dexe; int dtlg; int mofull; int moemp; int miovf; int mifull; int miemp; int tima; int tactl; int timb; int tbctl; int timc; int tcctl; int scieb; int scipd; int scilv0; int scilv1; int scilv2; int mcieb; int mcipd; scalar_t__ stack; int midi_out_cnt; int midi_in_cnt; scalar_t__ midi_out_buf; scalar_t__ midi_in_buf; int dmea; int rbp; TYPE_4__* slot; } ;
struct TYPE_7__ {int member_1; int member_0; } ;
typedef TYPE_1__ IOCheck_struct ;
typedef int FILE ;


 TYPE_6__* M68K ;
 int PSP_FLUSH_ALL () ;
 int ScspSyncThread () ;
 int ScspUpdateSlotAddress (TYPE_4__*) ;
 int ScspUpdateSlotFunc (TYPE_4__*) ;
 int ScspWriteWordDirect (int,int) ;
 scalar_t__ SoundRam ;
 int m68k_running ;
 TYPE_3__ scsp ;
 int* scsp_regcache ;
 scalar_t__ scsp_thread_running ;
 int stub1 (int,int) ;
 int stub2 (int,int) ;
 int stub3 (int) ;
 int stub4 (int) ;
 int yread (TYPE_1__*,void*,int,int,int *) ;

int SoundLoadState(FILE *fp, int version, int size)
{
   int i, i2;
   u32 temp;
   u8 temp8;
   IOCheck_struct check = { 0, 0 };

   if (scsp_thread_running)
      ScspSyncThread();


   yread(&check, (void *)&m68k_running, 1, 1, fp);
   for (i = 0; i < 8; i++)
   {
      yread(&check, (void *)&temp, 4, 1, fp);
      M68K->SetDReg(i, temp);
   }
   for (i = 0; i < 8; i++)
   {
      yread(&check, (void *)&temp, 4, 1, fp);
      M68K->SetAReg(i, temp);
   }
   yread(&check, (void *)&temp, 4, 1, fp);
   M68K->SetSR(temp);
   yread(&check, (void *)&temp, 4, 1, fp);
   M68K->SetPC(temp);


   yread(&check, (void *)scsp_regcache, 0x1000, 1, fp);


   yread(&check, (void *)SoundRam, 0x80000, 1, fp);


   for (i = 0; i < 32; i++)
   {
      for (i2 = 0; i2 < 0x18; i2 += 2)
         ScspWriteWordDirect(i<<5 | i2, scsp_regcache[(i<<5 | i2) >> 1]);



      ScspUpdateSlotAddress(&scsp.slot[i]);
      ScspUpdateSlotFunc(&scsp.slot[i]);
   }

   if (version > 1)
   {

      for (i = 0; i < 32; i++)
      {
         yread(&check, (void *)&scsp.slot[i].key, 1, 1, fp);
         yread(&check, (void *)&scsp.slot[i].addr_counter, 4, 1, fp);
         yread(&check, (void *)&scsp.slot[i].env_counter, 4, 1, fp);
         yread(&check, (void *)&scsp.slot[i].env_step, 4, 1, fp);
         yread(&check, (void *)&scsp.slot[i].env_target, 4, 1, fp);
         yread(&check, (void *)&scsp.slot[i].env_phase, 4, 1, fp);


         yread(&check, (void *)&temp8, 1, 1, fp);

         yread(&check, (void *)&scsp.slot[i].lfo_counter, 4, 1, fp);
         yread(&check, (void *)&scsp.slot[i].lfo_step, 4, 1, fp);
      }


      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.mem4mb = temp;

      scsp.dac18b = (scsp_regcache[0x400>>1] >> 8) & 1;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.mvol = temp;

      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.rbl = temp;
      yread(&check, (void *)&scsp.rbp, 4, 1, fp);

      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.mslc = temp;

      yread(&check, (void *)&scsp.dmea, 4, 1, fp);
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.drga = temp;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.dgate = temp>>6 & 1;
      scsp.ddir = temp>>5 & 1;
      scsp.dexe = temp>>4 & 1;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.dtlg = temp;

      yread(&check, (void *)scsp.midi_in_buf, 1, 4, fp);
      yread(&check, (void *)scsp.midi_out_buf, 1, 4, fp);
      yread(&check, (void *)&scsp.midi_in_cnt, 1, 1, fp);
      yread(&check, (void *)&scsp.midi_out_cnt, 1, 1, fp);
      yread(&check, (void *)&temp8, 1, 1, fp);
      scsp.mofull = temp8>>4 & 1;
      scsp.moemp = temp8>>3 & 1;
      scsp.miovf = temp8>>2 & 1;
      scsp.mifull = temp8>>1 & 1;
      scsp.miemp = temp8>>0 & 1;

      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.tima = temp;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.tactl = temp;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.timb = temp;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.tbctl = temp;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.timc = temp;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.tcctl = temp;

      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.scieb = temp;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.scipd = temp;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.scilv0 = temp;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.scilv1 = temp;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.scilv2 = temp;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.mcieb = temp;
      yread(&check, (void *)&temp, 4, 1, fp);
      scsp.mcipd = temp;

      yread(&check, (void *)scsp.stack, 4, 32 * 2, fp);
   }

   if (scsp_thread_running)
      PSP_FLUSH_ALL();

   return size;
}
