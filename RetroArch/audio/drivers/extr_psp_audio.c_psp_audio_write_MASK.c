#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void const uint32_t ;
typedef  size_t uint16_t ;
typedef  int ssize_t ;
struct TYPE_2__ {size_t write_pos; int /*<<< orphan*/  fifo_lock; scalar_t__ buffer; int /*<<< orphan*/  cond_lock; int /*<<< orphan*/  cond; scalar_t__ read_pos; scalar_t__ nonblocking; int /*<<< orphan*/  running; } ;
typedef  TYPE_1__ psp_audio_t ;

/* Variables and functions */
 size_t AUDIO_BUFFER_SIZE ; 
 size_t AUDIO_BUFFER_SIZE_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(void *data, const void *buf, size_t size)
{
   psp_audio_t* psp = (psp_audio_t*)data;
   uint16_t write_pos   = psp->write_pos;
   uint16_t sampleCount = size / sizeof(uint32_t);

   if (!psp->running)
      return -1;

   if (psp->nonblocking)
   {
      if (AUDIO_BUFFER_SIZE - ((uint16_t)
            (psp->write_pos - psp->read_pos) & AUDIO_BUFFER_SIZE_MASK) < size)
      return 0;
   }

   FUNC2(psp->cond_lock);
   while (AUDIO_BUFFER_SIZE - ((uint16_t)
      (psp->write_pos - psp->read_pos) & AUDIO_BUFFER_SIZE_MASK) < size)
      FUNC1(psp->cond, psp->cond_lock);
   FUNC3(psp->cond_lock);

   FUNC2(psp->fifo_lock);
   if((write_pos + sampleCount) > AUDIO_BUFFER_SIZE)
   {
      FUNC0(psp->buffer + write_pos, buf,
            (AUDIO_BUFFER_SIZE - write_pos) * sizeof(uint32_t));
      FUNC0(psp->buffer, (uint32_t*) buf +
            (AUDIO_BUFFER_SIZE - write_pos),
            (write_pos + sampleCount - AUDIO_BUFFER_SIZE) * sizeof(uint32_t));
   }
   else
      FUNC0(psp->buffer + write_pos, buf, size);

   write_pos      += sampleCount;
   write_pos      &= AUDIO_BUFFER_SIZE_MASK;
   psp->write_pos  = write_pos;

   FUNC3(psp->fifo_lock);
   return size;

}