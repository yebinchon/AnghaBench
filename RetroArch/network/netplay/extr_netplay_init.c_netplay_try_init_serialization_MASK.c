#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {scalar_t__ size; int /*<<< orphan*/  data; int /*<<< orphan*/ * data_const; } ;
typedef  TYPE_2__ retro_ctx_serialize_info_t ;
struct TYPE_10__ {size_t run_ptr; int /*<<< orphan*/  quirks; scalar_t__ state_size; TYPE_1__* buffer; } ;
typedef  TYPE_3__ netplay_t ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ NETPLAY_QUIRK_INITIALIZATION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 

bool FUNC3(netplay_t *netplay)
{
   retro_ctx_serialize_info_t serial_info;

   if (netplay->state_size)
      return true;

   if (!FUNC1(netplay))
      return false;

   /* Check if we can actually save */
   serial_info.data_const = NULL;
   serial_info.data       = netplay->buffer[netplay->run_ptr].state;
   serial_info.size       = netplay->state_size;

   if (!FUNC0(&serial_info))
      return false;

   /* Once initialized, we no longer exhibit this quirk */
   netplay->quirks &= ~((uint64_t) NETPLAY_QUIRK_INITIALIZATION);

   return FUNC2(netplay);
}