#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ id; } ;
struct TYPE_8__ {TYPE_1__ current; } ;
struct TYPE_9__ {TYPE_2__ resolutions; } ;
struct TYPE_10__ {TYPE_3__ screen; } ;
struct TYPE_11__ {TYPE_4__ console; } ;
typedef  TYPE_5__ global_t ;

/* Variables and functions */
 scalar_t__ GX_RESOLUTIONS_LAST ; 
 TYPE_5__* FUNC0 () ; 

__attribute__((used)) static void FUNC1(void *data)
{
   global_t *global = FUNC0();

   if (global->console.screen.resolutions.current.id == 0)
   {
      global->console.screen.resolutions.current.id = GX_RESOLUTIONS_LAST;
      return;
   }

   global->console.screen.resolutions.current.id--;
}