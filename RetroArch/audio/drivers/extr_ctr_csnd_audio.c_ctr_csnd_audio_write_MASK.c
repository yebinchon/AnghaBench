#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  size_t ssize_t ;
struct TYPE_3__ {int playpos; int pos; int /*<<< orphan*/ * r; int /*<<< orphan*/ * l; scalar_t__ nonblocking; } ;
typedef  TYPE_1__ ctr_csnd_audio_t ;

/* Variables and functions */
 int CTR_CSND_AUDIO_COUNT ; 
 int CTR_CSND_AUDIO_COUNT_MASK ; 
 int /*<<< orphan*/  CTR_CSND_AUDIO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static ssize_t FUNC3(void *data, const void *buf, size_t size)
{
   int i;
   uint32_t samples_played                     = 0;
   uint64_t current_tick                       = 0;
   const uint16_t                         *src = buf;
   ctr_csnd_audio_t                       *ctr = (ctr_csnd_audio_t*)data;

   (void)data;
   (void)buf;
   (void)samples_played;
   (void)current_tick;

   FUNC1(ctr);

   if((((ctr->playpos  - ctr->pos) & CTR_CSND_AUDIO_COUNT_MASK) < (CTR_CSND_AUDIO_COUNT >> 2)) ||
      (((ctr->pos - ctr->playpos ) & CTR_CSND_AUDIO_COUNT_MASK) < (CTR_CSND_AUDIO_COUNT >> 4)) ||
      (((ctr->playpos  - ctr->pos) & CTR_CSND_AUDIO_COUNT_MASK) < (size >> 2)))
   {
      if (ctr->nonblocking)
         ctr->pos = (ctr->playpos + (CTR_CSND_AUDIO_COUNT >> 1)) & CTR_CSND_AUDIO_COUNT_MASK;
      else
      {
         do{
            /* todo: compute the correct sleep period */
            FUNC2(1);
            FUNC1(ctr);
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

   FUNC0(ctr->l, CTR_CSND_AUDIO_SIZE);
   FUNC0(ctr->r, CTR_CSND_AUDIO_SIZE);

   return size;
}