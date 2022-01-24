#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {size_t size; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ fifo_buffer_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

fifo_buffer_t *FUNC2(size_t size)
{
   uint8_t    *buffer = NULL;
   fifo_buffer_t *buf = (fifo_buffer_t*)FUNC0(1, sizeof(*buf));

   if (!buf)
      return NULL;

   buffer = (uint8_t*)FUNC0(1, size + 1);

   if (!buffer)
   {
      FUNC1(buf);
      return NULL;
   }

   buf->buffer = buffer;
   buf->size   = size + 1;

   return buf;
}