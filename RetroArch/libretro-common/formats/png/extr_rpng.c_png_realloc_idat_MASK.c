#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct png_chunk {scalar_t__ size; } ;
struct idat_buffer {int /*<<< orphan*/ * data; scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

bool FUNC1(const struct png_chunk *chunk, struct idat_buffer *buf)
{
   uint8_t *new_buffer = (uint8_t*)FUNC0(buf->data, buf->size + chunk->size);

   if (!new_buffer)
      return false;

   buf->data  = new_buffer;
   return true;
}