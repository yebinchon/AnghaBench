#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int bits; int bytes; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ VC_CONTAINER_BITS_T ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(VC_CONTAINER_BITS_T *bit_stream,
      uint32_t bits_to_skip)
{
   uint32_t have_bits;
   uint32_t new_bytes;

   have_bits = FUNC0(bit_stream);
   if (have_bits < bits_to_skip)
   {
      FUNC1(bit_stream);
      return;
   }

   have_bits -= bits_to_skip;
   new_bytes = have_bits >> 3;
   bit_stream->bits = have_bits & 7;
   bit_stream->buffer += (bit_stream->bytes - new_bytes);
   bit_stream->bytes = new_bytes;
}