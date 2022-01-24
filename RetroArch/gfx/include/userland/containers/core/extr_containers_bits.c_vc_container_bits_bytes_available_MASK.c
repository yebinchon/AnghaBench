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
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ VC_CONTAINER_BITS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__ const*) ; 

uint32_t FUNC2(const VC_CONTAINER_BITS_T *bit_stream)
{
   if (!bit_stream->buffer)
      return 0;

   FUNC0(!bit_stream->bits);

   return FUNC1(bit_stream) >> 3;
}