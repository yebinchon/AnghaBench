#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void const uint8_t ;
typedef  int uint32_t ;
typedef  size_t u32 ;
typedef  size_t ssize_t ;
struct TYPE_3__ {scalar_t__ data_pcm8; } ;
struct TYPE_4__ {int pos; TYPE_1__ dsp_buf; int /*<<< orphan*/  channel; scalar_t__ nonblocking; } ;
typedef  TYPE_2__ ctr_dsp_audio_t ;

/* Variables and functions */
 int CTR_DSP_AUDIO_COUNT ; 
 int CTR_DSP_AUDIO_COUNT_MASK ; 
 size_t CTR_DSP_AUDIO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static ssize_t FUNC4(void *data, const void *buf, size_t size)
{
   u32 pos;
   ctr_dsp_audio_t                           * ctr = (ctr_dsp_audio_t*)data;
   uint32_t sample_pos                             = FUNC2(ctr->channel);

   if((((sample_pos  - ctr->pos) & CTR_DSP_AUDIO_COUNT_MASK) < (CTR_DSP_AUDIO_COUNT >> 2)) ||
      (((ctr->pos - sample_pos ) & CTR_DSP_AUDIO_COUNT_MASK) < (CTR_DSP_AUDIO_COUNT >> 4)) ||
      (((sample_pos  - ctr->pos) & CTR_DSP_AUDIO_COUNT_MASK) < (size >> 2)))
   {
      if (ctr->nonblocking)
         ctr->pos = (sample_pos + (CTR_DSP_AUDIO_COUNT >> 1)) & CTR_DSP_AUDIO_COUNT_MASK;
      else
      {
         do{
            FUNC3(100000);
            sample_pos = FUNC2(ctr->channel);
         }while (((sample_pos - (ctr->pos + (size >>2))) & CTR_DSP_AUDIO_COUNT_MASK) > (CTR_DSP_AUDIO_COUNT >> 1)
                 || (((ctr->pos - (CTR_DSP_AUDIO_COUNT >> 4) - sample_pos) & CTR_DSP_AUDIO_COUNT_MASK) > (CTR_DSP_AUDIO_COUNT >> 1)));
      }
   }

   pos = ctr->pos << 2;

   if((pos + size) > CTR_DSP_AUDIO_SIZE)
   {
      FUNC1(ctr->dsp_buf.data_pcm8 + pos, buf,
            (CTR_DSP_AUDIO_SIZE - pos));
      FUNC0(ctr->dsp_buf.data_pcm8 + pos, (CTR_DSP_AUDIO_SIZE - pos));

      FUNC1(ctr->dsp_buf.data_pcm8, (uint8_t*) buf + (CTR_DSP_AUDIO_SIZE - pos),
            (pos + size - CTR_DSP_AUDIO_SIZE));
      FUNC0(ctr->dsp_buf.data_pcm8, (pos + size - CTR_DSP_AUDIO_SIZE));
   }
   else
   {
      FUNC1(ctr->dsp_buf.data_pcm8 + pos, buf, size);
      FUNC0(ctr->dsp_buf.data_pcm8 + pos, size);
   }

   ctr->pos += size >> 2;
   ctr->pos &= CTR_DSP_AUDIO_COUNT_MASK;

   return size;
}