#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ buffer_size; } ;
typedef  TYPE_1__ pa_t ;
typedef  int /*<<< orphan*/  pa_stream ;
struct TYPE_5__ {scalar_t__ tlength; } ;
typedef  TYPE_2__ pa_buffer_attr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(pa_stream *s, void *data)
{
   pa_t *pa = (pa_t*)data;
   const pa_buffer_attr *server_attr = FUNC1(s);
   if (server_attr)
      pa->buffer_size = server_attr->tlength;

#if 0
   RARCH_LOG("[PulseAudio]: Got new buffer size %u.\n", (unsigned)pa->buffer_size);
#endif
}