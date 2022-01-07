
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lastjob; int* writebuff0; int* writebuff1; int loopc; int rate; int baseclock; } ;
struct TYPE_4__ {int* REGS; } ;
struct TYPE_5__ {int* ym_buffer; void* mp3dec; TYPE_1__ ym2612; } ;
 int MP3FreeDecoder (void*) ;
 void* MP3InitDecoder () ;
 int YM2612Init_ (int ,int ) ;
 int YM2612PicoStateLoad2 (int ,int ) ;
 int YM2612PicoStateLoad_ () ;
 int YM2612PicoStateSave2 (int ,int ) ;
 int YM2612ResetChip_ () ;
 int _memcpy (int*,int*,int) ;
 int dcache_clean () ;
 int dcache_clean_flush () ;
 int drain_wb () ;
 int mp3_decode () ;
 TYPE_3__* shared_ctl ;
 TYPE_2__* shared_data ;
 int wait_get_job (int) ;
 TYPE_1__* ym2612_940 ;
 int ym_flush_writes () ;
 int ym_update (int*) ;

void Main940(void)
{
 int *ym_buffer = shared_data->ym_buffer;
 int job = 0;
 ym2612_940 = &shared_data->ym2612;


 for (;;)
 {
  job = wait_get_job(job);

  shared_ctl->lastjob = job;

  switch (job)
  {
   case 137:

    shared_ctl->writebuff0[0] = shared_ctl->writebuff1[0] = 0xffff;
    YM2612Init_(shared_ctl->baseclock, shared_ctl->rate);

    shared_data->mp3dec = MP3InitDecoder();
    break;

   case 136:
    drain_wb();
    dcache_clean_flush();
    break;

   case 129:
    YM2612ResetChip_();
    break;

   case 133:
    YM2612PicoStateLoad_();
    break;

   case 130:
    YM2612PicoStateSave2(0, 0);
    _memcpy(shared_ctl->writebuff0, ym2612_940->REGS, 0x200);
    break;

   case 131:
    ym_flush_writes();
    break;

   case 132:
    _memcpy(ym2612_940->REGS, shared_ctl->writebuff0, 0x200);
    YM2612PicoStateLoad2(0, 0);
    break;

   case 128:
    ym_update(ym_buffer);
    break;

   case 135:
    mp3_decode();
    break;

   case 134:
    if (shared_data->mp3dec) MP3FreeDecoder(shared_data->mp3dec);
    shared_data->mp3dec = MP3InitDecoder();
    break;
  }

  shared_ctl->loopc++;
  dcache_clean();
 }
}
