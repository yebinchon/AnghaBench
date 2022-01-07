
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef size_t ssize_t ;
struct TYPE_3__ {int playpos; int pos; int * r; int * l; scalar_t__ nonblocking; } ;
typedef TYPE_1__ ctr_csnd_audio_t ;


 int CTR_CSND_AUDIO_COUNT ;
 int CTR_CSND_AUDIO_COUNT_MASK ;
 int CTR_CSND_AUDIO_SIZE ;
 int GSPGPU_FlushDataCache (int *,int ) ;
 int ctr_csnd_audio_update_playpos (TYPE_1__*) ;
 int retro_sleep (int) ;

__attribute__((used)) static ssize_t ctr_csnd_audio_write(void *data, const void *buf, size_t size)
{
   int i;
   uint32_t samples_played = 0;
   uint64_t current_tick = 0;
   const uint16_t *src = buf;
   ctr_csnd_audio_t *ctr = (ctr_csnd_audio_t*)data;

   (void)data;
   (void)buf;
   (void)samples_played;
   (void)current_tick;

   ctr_csnd_audio_update_playpos(ctr);

   if((((ctr->playpos - ctr->pos) & CTR_CSND_AUDIO_COUNT_MASK) < (CTR_CSND_AUDIO_COUNT >> 2)) ||
      (((ctr->pos - ctr->playpos ) & CTR_CSND_AUDIO_COUNT_MASK) < (CTR_CSND_AUDIO_COUNT >> 4)) ||
      (((ctr->playpos - ctr->pos) & CTR_CSND_AUDIO_COUNT_MASK) < (size >> 2)))
   {
      if (ctr->nonblocking)
         ctr->pos = (ctr->playpos + (CTR_CSND_AUDIO_COUNT >> 1)) & CTR_CSND_AUDIO_COUNT_MASK;
      else
      {
         do{

            retro_sleep(1);
            ctr_csnd_audio_update_playpos(ctr);
         }while (((ctr->playpos - ctr->pos) & CTR_CSND_AUDIO_COUNT_MASK) < (CTR_CSND_AUDIO_COUNT >> 1)
                 || (((ctr->pos - ctr->playpos) & CTR_CSND_AUDIO_COUNT_MASK) < (CTR_CSND_AUDIO_COUNT >> 4)));
      }
   }

   for (i = 0; i < (size >> 1); i += 2)
   {
      ctr->l[ctr->pos] = src[i];
      ctr->r[ctr->pos] = src[i + 1];
      ctr->pos++;
      ctr->pos &= CTR_CSND_AUDIO_COUNT_MASK;
   }

   GSPGPU_FlushDataCache(ctr->l, CTR_CSND_AUDIO_SIZE);
   GSPGPU_FlushDataCache(ctr->r, CTR_CSND_AUDIO_SIZE);

   return size;
}
