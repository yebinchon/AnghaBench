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
typedef  void uint8_t ;
struct TYPE_3__ {size_t first; size_t size; void const* buffer; } ;
typedef  TYPE_1__ fifo_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void const*,size_t) ; 

void FUNC1(fifo_buffer_t *buffer, void *in_buf, size_t size)
{
   size_t first_read = size;
   size_t rest_read  = 0;

   if (buffer->first + size > buffer->size)
   {
      first_read = buffer->size - buffer->first;
      rest_read  = size - first_read;
   }

   FUNC0(in_buf, (const uint8_t*)buffer->buffer + buffer->first, first_read);
   FUNC0((uint8_t*)in_buf + first_read, buffer->buffer, rest_read);

   buffer->first = (buffer->first + size) % buffer->size;
}