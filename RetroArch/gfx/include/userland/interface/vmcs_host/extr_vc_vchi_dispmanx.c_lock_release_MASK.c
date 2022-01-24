#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_2__ {size_t num_connections; int /*<<< orphan*/  lock; int /*<<< orphan*/ * client_handle; scalar_t__ initialised; } ;

/* Variables and functions */
 TYPE_1__ dispmanx_client ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline void FUNC3 (void) {
   uint32_t i;
   FUNC1(dispmanx_client.initialised);
   if(dispmanx_client.initialised)
   {
      for (i=0; i<dispmanx_client.num_connections; i++) {
         FUNC0(dispmanx_client.client_handle[i]);
      }
   }
   FUNC2( &dispmanx_client.lock );
}