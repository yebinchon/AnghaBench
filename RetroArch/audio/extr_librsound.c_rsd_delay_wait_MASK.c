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
struct TYPE_4__ {scalar_t__ max_latency; } ;
typedef  TYPE_1__ rsound_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 

void FUNC3(rsound_t *rd)
{

   /* When called, we make sure that the latency never goes over the time designated in RSD_LATENCY.
      Useful for certain blocking I/O designs where the latency still needs to be quite low.
      Without this, the latency of the stream will depend on how big the network buffers are.
      ( We simulate that we're a low latency sound card ) */

   /* Should we bother with checking latency at all? */
   if ( rd->max_latency > 0 )
   {
      /* Latency of stream in ms */
      int latency_ms = FUNC2(rd);

      /* Should we sleep for a while to keep the latency low? */
      if ( rd->max_latency < latency_ms )
      {
         int64_t sleep_ms = latency_ms - rd->max_latency;
         FUNC0("[RSound] Delay wait: %d ms.\n", (int)sleep_ms);
         FUNC1((int)sleep_ms);
      }
   }
}