#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {scalar_t__ latency; } ;
struct TYPE_8__ {int bytes_in_buffer; TYPE_2__ thread; scalar_t__ delay_offset; TYPE_1__ backend_info; } ;
typedef  TYPE_3__ rsound_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC4(rsound_t *rd)
{
   int ptr;
   FUNC1(rd);
   ptr = rd->bytes_in_buffer;

   /* Adds the backend latency to the calculated latency. */
   ptr += (int)rd->backend_info.latency;

   FUNC2(rd->thread.mutex);
   ptr += rd->delay_offset;
   FUNC0("Offset: %d.\n", rd->delay_offset);
   FUNC3(rd->thread.mutex);

   if ( ptr < 0 )
      ptr = 0;

   return (size_t)ptr;
}