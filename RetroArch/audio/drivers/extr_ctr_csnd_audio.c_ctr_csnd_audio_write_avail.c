
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t playpos; size_t pos; } ;
typedef TYPE_1__ ctr_csnd_audio_t ;


 size_t CTR_CSND_AUDIO_COUNT_MASK ;
 int ctr_csnd_audio_update_playpos (TYPE_1__*) ;

__attribute__((used)) static size_t ctr_csnd_audio_write_avail(void *data)
{
   ctr_csnd_audio_t* ctr = (ctr_csnd_audio_t*)data;

   ctr_csnd_audio_update_playpos(ctr);
   return (ctr->playpos - ctr->pos) & CTR_CSND_AUDIO_COUNT_MASK;
}
