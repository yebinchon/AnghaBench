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
struct delta_frame {scalar_t__ frame; int /*<<< orphan*/ * simlated_input; int /*<<< orphan*/ * real_input; } ;
struct TYPE_4__ {scalar_t__* read_frame_count; } ;
typedef  TYPE_1__ netplay_t ;
typedef  int /*<<< orphan*/ * netplay_input_state_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int,int,int) ; 

netplay_input_state_t FUNC2(netplay_t *netplay,
      struct delta_frame *simframe, uint32_t device, uint32_t client)
{
   uint32_t                 dsize = 
      FUNC0(netplay, 1 << device);
   netplay_input_state_t simstate =
      FUNC1(
         &simframe->real_input[device], client,
         dsize, false, true);

   if (!simstate)
   {
      if (netplay->read_frame_count[client] > simframe->frame)
         return NULL;
      simstate = FUNC1(&simframe->simlated_input[device],
            client, dsize, false, true);
   }
   return simstate;
}