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
typedef  int /*<<< orphan*/  memstream_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/ * g_buffer ; 
 scalar_t__ g_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,unsigned int) ; 

memstream_t *FUNC2(unsigned writing)
{
   memstream_t *stream;
   if (!g_buffer || !g_size)
      return NULL;

   stream = (memstream_t*)FUNC0(1, sizeof(*stream));
   FUNC1(stream, g_buffer, g_size, writing);

   g_buffer = NULL;
   g_size = 0;
   return stream;
}